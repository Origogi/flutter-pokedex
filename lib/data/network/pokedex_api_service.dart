import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/data/dto/pokemon_data.dart';
import 'package:pokedex/data/dto/pokemon_species_data.dart';
import 'package:retrofit/retrofit.dart';

part 'pokedex_api_service.g.dart';

@RestApi(baseUrl: 'https://pokeapi.co/api/v2/')
abstract class PokedexApiService {
  factory PokedexApiService(Dio dio, {String baseUrl}) = _PokedexApiService;

  @GET('pokemon/{id}')
  Future<PokemonData> getPokemonDetails(@Path('id') int id);

  @GET('pokemon-species/{id}')
  Future<PokemonSpeciesData> getPokemonSpecies(@Path('id') int id);
}

final pokedexApiService = Provider((ref) {
  final dio = Dio();
  return PokedexApiService(dio);
});
