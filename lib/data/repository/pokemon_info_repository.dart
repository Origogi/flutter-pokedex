import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/data/network/pokedex_api_client.dart';
import 'package:pokedex/domain/model/pokemon_info.dart';
import 'package:pokedex/domain/model/pokemon_type.dart';

class PokemonInfoRepository {
  final PokedexApiClient _apiClient;

  PokemonInfoRepository(this._apiClient);

  Future<PokemonInfo> getById(int id) async {
    final pokemonData = await _apiClient.getPokemonDataById(id);
    return PokemonInfo(
      pokedexId: pokemonData.id,
      name: pokemonData.name,
      imageUrl: pokemonData.sprites.frontDefault,
      animatedImageUrl: pokemonData.sprites.other.showdown.frontDefault,
      types: pokemonData.types
          .map((e) => PokemonType.valueOf(e.type.name))
          .toList(),
    );
  }
}

final pokemonInfoRepositoryProvider =
    Provider.autoDispose<PokemonInfoRepository>((ref) {
  final apiClient = ref.watch(pokedexApiClientProvider);
  return PokemonInfoRepository(apiClient);
});

// For cached data
final pokemonInfoProvider =
    FutureProvider.autoDispose.family<PokemonInfo, int>((ref, id) async {
  final repository = ref.watch(pokemonInfoRepositoryProvider);
  return repository.getById(id);
});
