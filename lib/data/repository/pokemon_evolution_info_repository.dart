

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/data/dto/pokemon_evolution_chain_data.dart';
import 'package:pokedex/data/network/pokedex_api_client.dart';
import 'package:pokedex/domain/model/pokemon_card_info.dart';
import 'package:pokedex/domain/model/pokemon_evolution_chain_info.dart';
import 'package:pokedex/domain/model/pokemon_type.dart';

class PokemonEvolutionInfoRepository {
  final PokedexApiClient _apiClient;

  PokemonEvolutionInfoRepository(this._apiClient);

  Future<PokemonEvolutionChainInfo?> getPokemonEvolutionChainDataById(int id) async {
    final pokemonEvolutionChainData = await _apiClient.getPokemonEvolutionChainDataById(id);
    
    return await _getNext(pokemonEvolutionChainData.chain);
  }

  Future<PokemonEvolutionChainInfo?> _getNext(ChainData? data) async {
    if (data == null) {
      return null;
    }

    final cardInfo = await getCardInfo(_getPokedexIDFromURL(data.species.url));
    final next = await _getNext(data.evolvesTo.firstOrNull);

    return PokemonEvolutionChainInfo(
      cardInfo: cardInfo,
      next: next,
    );
  }

  Future<PokemonCardInfo> getCardInfo(int id) async {
    final pokemonData = await _apiClient.getPokemonDataById(id);
    return PokemonCardInfo(            
      pokedexId: pokemonData.id,
      name: pokemonData.name,
      imageUrl: pokemonData.sprites.versions.generationVII.icons.frontDefault,
      types: pokemonData.types.map((e) => PokemonType.valueOf(e.type.name)).toList(),
    );
  }

  int _getPokedexIDFromURL(String url) {
    final uri = Uri.parse(url);
    final segments = uri.pathSegments;
    return int.parse(segments[segments.length - 2]);
  }

}

final pokemonEvolutionInfoRepositoryProvider = Provider((ref) {
  final apiClient = ref.watch(pokedexApiClientProvider);
  return PokemonEvolutionInfoRepository(apiClient);
});

final pokemonEvolutionInfoProvider = FutureProvider.family<PokemonEvolutionChainInfo?, int>((ref, id) async {
  final repository = ref.watch(pokemonEvolutionInfoRepositoryProvider);
  return repository.getPokemonEvolutionChainDataById(id);
});