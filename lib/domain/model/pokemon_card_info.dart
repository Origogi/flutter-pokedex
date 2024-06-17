
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/model/pokemon_type.dart';

part 'pokemon_card_info.freezed.dart';

@freezed
class PokemonCardInfo with _$PokemonCardInfo{
  const factory PokemonCardInfo({
    required int pokedexId,
    required String name,
    required String imageUrl,
    required List<PokemonType> types,
  }) = _PokemonCardInfo;

}

// add property firstType
extension PokemonCardInfoExtension on PokemonCardInfo {
  PokemonType get mainType => types.first;
}
