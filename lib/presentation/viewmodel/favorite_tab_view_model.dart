import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/domain/model/pokemon_card_info.dart';
import 'package:pokedex/domain/model/pokemon_type.dart';

part 'favorite_tab_view_model.freezed.dart';

@freezed
class FavoriteTabViewModelState with _$FavoriteTabViewModelState {
  const factory FavoriteTabViewModelState({
    required bool isLoading,
    required List<PokemonCardInfo> list,
  }) = _FavoriteTabViewModelState;
}

class FavoriteTabViewModel extends StateNotifier<FavoriteTabViewModelState> {
  FavoriteTabViewModel()
      : super(const FavoriteTabViewModelState(list: [], isLoading: false)) {
    load();
  }

  Future<void> load() async {
    state = state.copyWith(isLoading: true);

    await Future.delayed(const Duration(seconds: 1));

    state = state.copyWith(
      isLoading: false,
      list: List.generate(10, (index) {
        return PokemonCardInfo(
          pokedexId: index,
          name: "Pokemon $index",
          imageUrl:
              "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/${index + 1}.png",
          types: [PokemonType.fire],
        );
      }),
    );
  }
}

final favoriteTabViewModelProvider =
    StateNotifierProvider<FavoriteTabViewModel, FavoriteTabViewModelState>(
        (ref) => FavoriteTabViewModel());
