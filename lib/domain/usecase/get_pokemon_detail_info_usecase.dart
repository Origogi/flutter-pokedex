import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/data/repository/pokemon_info_repository.dart';
import 'package:pokedex/data/repository/pokemon_species_info_repository.dart';
import 'package:pokedex/domain/model/pokemon_detail_info.dart';
import 'package:pokedex/domain/model/pokemon_type.dart';
import 'package:pokedex/util/extentions.dart';

class GetPokemonDetailInfoUsecase {
  GetPokemonDetailInfoUsecase(
      {required this.pokemonInfoRepository,
      required this.pokemonSpeciesInfoRepository});

  final PokemonInfoRepository pokemonInfoRepository;
  final PokemonSpeciesInfoRepository pokemonSpeciesInfoRepository;

  Future<PokemonDetailInfo> execute(int id) async {
    final pokemonInfo = await pokemonInfoRepository.getById(id);
    final pokemonSpeciesInfo = await pokemonSpeciesInfoRepository.getById(id);


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
      // TODO: Implement the weaknesses
      weaknesses: [
        PokemonType.bug,
        PokemonType.dark,
        PokemonType.dragon,
      ]
    );
  }
}

final getPokemonDetailInfoUsecaseProvider =
    Provider.autoDispose<GetPokemonDetailInfoUsecase>((ref) {
  final pokemonInfoRepository = ref.watch(pokemonInfoRepositoryProvider);
  final pokemonSpeciesInfoRepository =
      ref.watch(pokemonSpeciesInfoRepositoryProvider);

  return GetPokemonDetailInfoUsecase(
      pokemonInfoRepository: pokemonInfoRepository,
      pokemonSpeciesInfoRepository: pokemonSpeciesInfoRepository);
});
