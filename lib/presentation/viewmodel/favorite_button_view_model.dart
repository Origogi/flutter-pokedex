import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/domain/usecase/add_favorite_pokedex_id_usecase.dart';
import 'package:pokedex/domain/usecase/is_favorite_pokedex_id_usecase.dart';
import 'package:pokedex/domain/usecase/remove_favorite_pokedex_id_usecase.dart';

part 'favorite_button_view_model.freezed.dart';

@freezed
class FavoriteButtonState with _$FavoriteButtonState {
  factory FavoriteButtonState({
    required bool isFavorite,
  }) = _FavoriteButtonState;
}

class FavoriteButtonViewModel extends StateNotifier<FavoriteButtonState> {
  FavoriteButtonViewModel({
    required this.pokedexId,
    required this.addFavoritePokedexIdUseCase,
    required this.removeFavoritePokedexIdUseCase,
    required this.watchIsFavoritePokedexIdUseCase,
  }) : super(FavoriteButtonState(isFavorite: false)) {
    _init();
  }

  final AddFavoritePokedexIdUsecase addFavoritePokedexIdUseCase;
  final RemoveFavoritePokedexIdUsecase removeFavoritePokedexIdUseCase;
  final IsFavoritePokedexIdUsecase watchIsFavoritePokedexIdUseCase;
  final int pokedexId;

  StreamSubscription? _subscription;

  Future<void> _init() async {
    _subscription =
        watchIsFavoritePokedexIdUseCase.watch(pokedexId).listen((isFavorite) {
      state = state.copyWith(
        isFavorite: isFavorite,
      );
    });

    final isFavorite = await watchIsFavoritePokedexIdUseCase.execute(pokedexId);

    state = state.copyWith(
      isFavorite: isFavorite,
    );
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }

  Future<void> toggleFavorite() async {
    if (state.isFavorite) {
      await removeFavoritePokedexIdUseCase.execute(pokedexId);
    } else {
      await addFavoritePokedexIdUseCase.execute(pokedexId);
    }

    state = state.copyWith(
      isFavorite: !state.isFavorite,
    );
  }
}

final favoriteButtonViewModelProvider = StateNotifierProvider.autoDispose
    .family<FavoriteButtonViewModel, FavoriteButtonState, int>(
        (ref, pokedexId) {
  final addFavoritePokedexIdUseCase =
      ref.watch(addFavoritePokedexIdUseCaseProvider);
  final removeFavoritePokedexIdUseCase =
      ref.watch(removeFavoritePokedexIdUseCaseProvider);
  final watchIsFavoritePokedexIdUseCase =
      ref.watch(watchIsFavoritePokedexIdUseCaseProvider);

  return FavoriteButtonViewModel(
    pokedexId: pokedexId,
    addFavoritePokedexIdUseCase: addFavoritePokedexIdUseCase,
    removeFavoritePokedexIdUseCase: removeFavoritePokedexIdUseCase,
    watchIsFavoritePokedexIdUseCase: watchIsFavoritePokedexIdUseCase,
  );
});
