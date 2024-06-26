import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/domain/model/pokemon_detail_info.dart';
import 'package:pokedex/domain/model/pokemon_type.dart';

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
  ) : super(PokemonDetailScreenViewModelState()) {
    _init(pokedexId);
  }

  Future<void> _init(int pokedexId) async {
    state = state.copyWith(
      pokemonDetailInfo: PokemonDetailInfo(
        pokedexId: 1,
        name: 'Bulbasaur',
        imageUrl:
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/showdown/1.gif',
        types: [
          PokemonType.grass,
          PokemonType.poison,
        ],
      ),
    );
  }
}

// provider with family auto dispose
final pokemonDetailScreenViewModelProvider = StateNotifierProvider.autoDispose
    .family<PokemonDetailScreenViewModel, PokemonDetailScreenViewModelState,
        int>((ref, pokedexId) {
  return PokemonDetailScreenViewModel(pokedexId);
});
