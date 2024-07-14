import 'dart:convert';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/data/dto/pokemon_data.dart';
import 'package:pokedex/data/dto/pokemon_species_data.dart';
import 'package:pokedex/data/dto/pokemon_type_detail_data.dart';
import 'package:http/http.dart' as http;

class PokedexApiService {
  final String baseUrl = 'https://pokeapi.co/api/v2/';
  final client = http.Client();

  Future<PokemonData> getPokemonDetails(int id) async {
    final uri = Uri.parse('$baseUrl/pokemon/$id');
    final response = await http.get(uri);

    var jsonBody =
        jsonDecode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;

    return PokemonData.fromJson(jsonBody);
  }

  Future<PokemonSpeciesData> getPokemonSpecies(int id) async {
    final uri = Uri.parse('$baseUrl/pokemon-species/$id');
    final response = await http.get(uri);

    var jsonBody =
        jsonDecode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;

    return PokemonSpeciesData.fromJson(jsonBody);
  }

  Future<PokemonTypeDetailData> getPokemonTypeDetail(String type) async {
    final uri = Uri.parse('$baseUrl/type/$type');
    final response = await http.get(uri);

    var jsonBody =
        jsonDecode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;

    return PokemonTypeDetailData.fromJson(jsonBody);
  }
}

final pokedexApiService = Provider((ref) {
  return PokedexApiService();
});
