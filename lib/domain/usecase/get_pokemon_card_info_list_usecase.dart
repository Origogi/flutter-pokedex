import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/data/repository/pokemon_card_info_repository.dart';
import 'package:pokedex/domain/model/pokemon_card_info.dart';

class GetPokemonCardInfoListUseCase {
  final Ref ref;

  GetPokemonCardInfoListUseCase(this.ref);

  Future<List<PokemonCardInfo>> execute(int offset, int limit) async {
    final list = await Future.wait(List.generate(limit,
        (index) => ref.read(pokemonCardInfoProvider(offset + 1 + index).future)));

    list.sort((a, b) => a.pokedexId.compareTo(b.pokedexId));
    return list;
  }
}


final getPokemonCardInfoListUseCaseProvider = Provider.autoDispose<GetPokemonCardInfoListUseCase>((ref) {
  return GetPokemonCardInfoListUseCase(ref);
});