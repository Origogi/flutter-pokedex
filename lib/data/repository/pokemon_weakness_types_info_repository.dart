import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/domain/model/pokemon_type.dart';
import 'package:pokedex/domain/model/pokemon_weakness_types_info.dart';

class PokemonWeaknessTypesInfoRepository {

  Future<PokemonWeaknessTypesInfo> getByType(String type) async {
      // TODO: Implement the weaknesses
    return const PokemonWeaknessTypesInfo(
      weaknesses: [
        PokemonType.bug,
        PokemonType.dark,
        PokemonType.dragon,
      ]);
  }
}

// provider
final pokemonWeaknessTypesInfoRepositoryProvider = Provider((ref) {
  return PokemonWeaknessTypesInfoRepository();
});

final pokemonWeaknessTypesInfoProvider = FutureProvider
    .family<PokemonWeaknessTypesInfo, String>((ref, type) {
  final repository = ref.watch(pokemonWeaknessTypesInfoRepositoryProvider);
  return repository.getByType(type);
});