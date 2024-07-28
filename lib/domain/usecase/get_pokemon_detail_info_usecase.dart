import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/data/repository/pokemon_evolution_info_repository.dart';
import 'package:pokedex/data/repository/pokemon_info_repository.dart';
import 'package:pokedex/data/repository/pokemon_species_info_repository.dart';
import 'package:pokedex/data/repository/pokemon_weakness_types_info_repository.dart';
import 'package:pokedex/domain/model/pokemon_detail_info.dart';

import 'package:pokedex/util/extentions.dart';

final pokemonDetailInfoUseCaseProvider =
    FutureProvider.autoDispose.family<PokemonDetailInfo, int>((ref, id) async {
  final pokemonInfo = await ref.watch(pokemonInfoProvider(id).future);
  final pokemonSpeciesInfo =
      await ref.watch(pokemonSpeciesInfoProvider(id).future);
  final pokemonWeaknessTypes = await ref.watch(
      pokemonWeaknessTypesInfoProvider(pokemonInfo.types.first.name).future);
  final pokemonEvolutionInfo = await ref.watch(
      pokemonEvolutionInfoProvider(pokemonSpeciesInfo.evolutionChainId).future);

  return PokemonDetailInfo(
    pokedexId: pokemonInfo.pokedexId,
    name: pokemonInfo.name,
    imageUrl: pokemonInfo.animatedImageUrl,
    types: pokemonInfo.types,
    desc: pokemonSpeciesInfo.desc,
    category: pokemonSpeciesInfo.category.split(" ")[0],
    height: (pokemonInfo.height) / 10,
    weight: (pokemonInfo.weight) / 10,
    abilities: pokemonInfo.abilities
        .map((e) => e.capitalizeFirst().replaceAll("-", " "))
        .toList(),
    genderRate: pokemonSpeciesInfo.genderRate,
    weaknesses: pokemonWeaknessTypes.weaknesses,
  );
});
