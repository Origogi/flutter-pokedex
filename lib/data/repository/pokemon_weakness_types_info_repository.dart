import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/data/network/pokedex_api_client.dart';
import 'package:pokedex/domain/model/pokemon_type.dart';
import 'package:pokedex/domain/model/pokemon_weakness_types_info.dart';

class PokemonWeaknessTypesInfoRepository {
  final PokedexApiClient _apiClient;

  PokemonWeaknessTypesInfoRepository(this._apiClient);

  Future<PokemonWeaknessTypesInfo> getByType(String type) async {
    final data = await _apiClient.getPokemonTypeDetail(type);

    return PokemonWeaknessTypesInfo(
      weaknesses: data.demageRelations.doubleDamageFrom
          .map((e) => PokemonType.valueOf(e.name))
          .toList(),
    );
  }
}

// provider
final pokemonWeaknessTypesInfoRepositoryProvider = Provider((ref) {
  return PokemonWeaknessTypesInfoRepository(
    ref.watch(pokedexApiClientProvider),
  );
});

final pokemonWeaknessTypesInfoProvider =
    FutureProvider.family<PokemonWeaknessTypesInfo, String>((ref, type) {
  final repository = ref.watch(pokemonWeaknessTypesInfoRepositoryProvider);
  return repository.getByType(type);
});
