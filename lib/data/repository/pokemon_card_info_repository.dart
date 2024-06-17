import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/data/network/pokedex_api_client.dart';
import 'package:pokedex/domain/model/pokemon_card_info.dart';

class PokemonCardInfoRepository {
  final PokedexApiClient _apiClient;

  PokemonCardInfoRepository(this._apiClient);

  Future<PokemonCardInfo> getPokemonCardInfoById(int id) async {
    final pokemonData = await _apiClient.getPokemonDataById(id);
    return PokemonCardInfo(
      pokedexId: pokemonData.id,
      name: pokemonData.name,
      imageUrl:
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/${pokemonData.id}.png',
    );
  }
}

final pokemonCardInfoRepositoryProvider =
    Provider.autoDispose<PokemonCardInfoRepository>((ref) {
  final apiClient = ref.watch(pokedexApiClientProvider);
  return PokemonCardInfoRepository(apiClient);
});

// For cached data
final pokemonCardInfoProvider =
    FutureProvider.autoDispose.family<PokemonCardInfo, int>((ref, id) async {
  final repository = ref.watch(pokemonCardInfoRepositoryProvider);
  return repository.getPokemonCardInfoById(id);
});
