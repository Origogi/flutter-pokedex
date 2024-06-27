import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/data/repository/pokemon_info_repository.dart';
import 'package:pokedex/domain/model/pokemon_detail_info.dart';

class GetPokemonDetailInfoUsecase {
  GetPokemonDetailInfoUsecase({
    required this.pokemonInfoRepository,
  });

  final PokemonInfoRepository pokemonInfoRepository;

  Future<PokemonDetailInfo> execute(int id) async {
    final pokemonInfo = await pokemonInfoRepository.getById(id);
    return PokemonDetailInfo(
      pokedexId: pokemonInfo.pokedexId,
      name: pokemonInfo.name,
      imageUrl: pokemonInfo.animatedImageUrl,
      types: pokemonInfo.types,
    );
  }
}

final getPokemonDetailInfoUsecaseProvider =
    Provider.autoDispose<GetPokemonDetailInfoUsecase>((ref) {
  final repository = ref.watch(pokemonInfoRepositoryProvider);
  return GetPokemonDetailInfoUsecase(pokemonInfoRepository: repository);
});
