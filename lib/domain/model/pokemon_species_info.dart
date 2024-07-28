import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/data/dto/common_data.dart';

part 'pokemon_species_info.freezed.dart';

@freezed
class PokemonSpeciesInfo with _$PokemonSpeciesInfo {
  factory PokemonSpeciesInfo({
    double? genderRate,
    required String desc,
    required String category,
    required int evolutionChainId,
  }) = _PokemonSpeciesInfo;
}
    