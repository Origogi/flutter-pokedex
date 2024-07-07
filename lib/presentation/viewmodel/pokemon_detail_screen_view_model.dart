import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/domain/model/pokemon_detail_info.dart';
import 'package:pokedex/domain/usecase/get_pokemon_detail_info_usecase.dart';

part 'pokemon_detail_screen_view_model.freezed.dart';

@freezed
class PokemonDetailScreenViewModelState
    with _$PokemonDetailScreenViewModelState {
  factory PokemonDetailScreenViewModelState({
    PokemonDetailInfo? pokemonDetailInfo,
  }) = _PokemonDetailScreenViewModelState;
}

class PokemonDetailScreenViewModel
    extends StateNotifier<PokemonDetailScreenViewModelState> {
  PokemonDetailScreenViewModel(
    int pokedexId,
    this.ref,
  ) : super(PokemonDetailScreenViewModelState()) {
    _init(pokedexId);
  }

  final Ref ref;


  Future<void> _init(int pokedexId) async {
    final info = await ref.read(pokemonDetailInfoUseCaseProvider(pokedexId).future);

    state = state.copyWith(
      pokemonDetailInfo: info,
    );
  }
}

// provider with family auto dispose
final pokemonDetailScreenViewModelProvider = StateNotifierProvider
    // .autoDispose  주석을 제거하면 캐쉬가 동작하지 않는다.
    .family<PokemonDetailScreenViewModel, PokemonDetailScreenViewModelState,
        int>((ref, pokedexId) {
  return PokemonDetailScreenViewModel(pokedexId, ref);
});
