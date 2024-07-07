

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/data/dto/pokemon_data.dart';
import 'package:pokedex/data/dto/pokemon_species_data.dart';
import 'package:pokedex/data/network/pokedex_api_service.dart';

class PokedexApiClient {

  final PokedexApiService _apiService;

  PokedexApiClient(this._apiService);

  Future<PokemonData> getPokemonDataById(int id) async {
    final pokemonData = await _apiService.getPokemonDetails(id);
    return pokemonData;
  }

  Future<PokemonSpeciesData> getPokemonSpeciesDataById(int id) async {
    final pokemonSpeciesData = await _apiService.getPokemonSpecies(id);
    return pokemonSpeciesData;
  }


}

final pokedexApiClientProvider = Provider((ref) {
  final apiService = ref.watch(pokedexApiService);
  return PokedexApiClient(apiService);
});