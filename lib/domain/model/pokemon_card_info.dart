
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_card_info.freezed.dart';

@freezed
class PokemonCardInfo with _$PokemonCardInfo{
  const factory PokemonCardInfo({
    required int pokedexId,
    required String name,
    required String imageUrl,
  }) = _PokemonCardInfo;

}