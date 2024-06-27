
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/model/pokemon_type.dart';

part 'pokemon_info.freezed.dart';

@freezed
class PokemonInfo with _$PokemonInfo {
  factory PokemonInfo({
    required int pokedexId,
    required String name,
    required String imageUrl,
    required List<PokemonType> types,
  }) = _PokemonInfo;
}