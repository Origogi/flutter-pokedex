import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/data/dto/pokemon_data.dart';
import 'package:pokedex/data/dto/pokemon_evolution_chain_data.dart';
import 'package:pokedex/data/dto/pokemon_species_data.dart';
import 'package:pokedex/data/dto/pokemon_type_detail_data.dart';
import 'package:pokedex/data/network/pokedex_api_service.dart';

class PokedexApiClient {
  final PokedexApiService _apiService;

  PokedexApiClient(this._apiService);

  Future<PokemonData> getPokemonDataById(int id) async {
    final pokemonData = await _apiService.getPokemonDetails(id);
    return pokemonData;
  }

    Future<PokemonData> getPokemonDataByName(int id) async {
    final pokemonData = await _apiService.getPokemonDetails(id);
    return pokemonData;
  }

  Future<PokemonSpeciesData> getPokemonSpeciesDataById(int id) async {
    final pokemonSpeciesData = await _apiService.getPokemonSpecies(id);
    return pokemonSpeciesData;
  }

  Future<PokemonTypeDetailData> getPokemonTypeDetail(String type) async {
    final pokemonTypeDetailData = await _apiService.getPokemonTypeDetail(type);
    return pokemonTypeDetailData;
  }

  Future<PokemonEvolutionChainData> getPokemonEvolutionChainDataById(
      int id) async {
    final pokemonEvolutionChainData =
        await _apiService.getPokemonEvolutionChain(id);
    return pokemonEvolutionChainData;
  }
}

final pokedexApiClientProvider = Provider((ref) {
  final apiService = ref.watch(pokedexApiService);
  return PokedexApiClient(apiService);
});
