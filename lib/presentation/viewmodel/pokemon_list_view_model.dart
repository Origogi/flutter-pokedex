import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/domain/model/pokemon_card_info.dart';
import 'package:pokedex/domain/usecase/get_pokemon_card_info_list_usecase.dart';

part 'pokemon_list_view_model.freezed.dart';

@freezed
class PokemonListViewModelState with _$PokemonListViewModelState {
  factory PokemonListViewModelState({
    required List<PokemonCardInfo> list,
    required bool isLoading,
    required bool isEndOfList,
  }) = _PokemonListViewModelState;
}

class PokemonListViewModel extends StateNotifier<PokemonListViewModelState> {
  PokemonListViewModel(
    this.useCase,
  ) : super(
          PokemonListViewModelState(
            list: [],
            isLoading: false,
            isEndOfList: false,
          ),
        ) {
    loadMore();
  }

  final GetPokemonCardInfoListUseCase useCase;

  Future<void> loadMore() async {
    state = state.copyWith(isLoading: true);

    final list = await useCase.execute(state.list.length, 20);

    state = state.copyWith(
      list: [...state.list, ...list],
      isLoading: false,
    );
  }
}


final pokemonListViewModelProvider = StateNotifierProvider.autoDispose<PokemonListViewModel, PokemonListViewModelState>((ref) {
  final useCase = ref.watch(getPokemonCardInfoListUseCaseProvider);
  return PokemonListViewModel(useCase);
});