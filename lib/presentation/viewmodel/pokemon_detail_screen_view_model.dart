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
    this.useCase,
  ) : super(PokemonDetailScreenViewModelState()) {
    _init(pokedexId);
  }

  final GetPokemonDetailInfoUsecase useCase;

  Future<void> _init(int pokedexId) async {
    final info = await useCase.execute(pokedexId);

    state = state.copyWith(
      pokemonDetailInfo: info,
    );
  }
}

// provider with family auto dispose
final pokemonDetailScreenViewModelProvider = StateNotifierProvider.autoDispose
    .family<PokemonDetailScreenViewModel, PokemonDetailScreenViewModelState,
        int>((ref, pokedexId) {
  final useCase = ref.watch(getPokemonDetailInfoUsecaseProvider);
  return PokemonDetailScreenViewModel(pokedexId, useCase);
});
