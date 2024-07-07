import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/data/network/pokedex_api_client.dart';
import 'package:pokedex/domain/model/pokemon_species_info.dart';

class PokemonSpeciesInfoRepository {
  final PokedexApiClient _apiClient;

  PokemonSpeciesInfoRepository(this._apiClient);

  Future<PokemonSpeciesInfo> getById(int id) async {
    final pokemonSpeciesData = await _apiClient.getPokemonSpeciesDataById(id);

    final engFlavorText = pokemonSpeciesData.flavorTextEntries
        .firstWhere((element) => element.language.name == 'en')
        .flavorText
        .replaceAll('\n', ' ');

    final genderRate = pokemonSpeciesData.genderRate != -1
        ? (8 - pokemonSpeciesData.genderRate.toDouble()) / 8
        : null;

    final engCategory = pokemonSpeciesData.genera
        .firstWhere((element) => element.language.name == 'en')
        .genus;

    return PokemonSpeciesInfo(
      desc: engFlavorText,
      genderRate: genderRate,
      category: engCategory,
    );
  }
}


final pokemonSpeciesInfoRepositoryProvider =
    Provider.autoDispose<PokemonSpeciesInfoRepository>((ref) {
  final apiClient = ref.watch(pokedexApiClientProvider);
  return PokemonSpeciesInfoRepository(apiClient);
});

final pokemonSpeciesInfoProvider =
    FutureProvider.autoDispose.family<PokemonSpeciesInfo, int>((ref, id) async {
  final repository = ref.watch(pokemonSpeciesInfoRepositoryProvider);
  return repository.getById(id);
});