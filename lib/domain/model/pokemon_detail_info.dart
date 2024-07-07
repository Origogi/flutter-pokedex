
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/model/pokemon_type.dart';


part 'pokemon_detail_info.freezed.dart';

@freezed
class PokemonDetailInfo with _$PokemonDetailInfo {
  factory PokemonDetailInfo({
    required int pokedexId,
    required String name,
    required String imageUrl,
    required List<PokemonType> types,
    required List<PokemonType> weaknesses,
    required String desc,
    required String category,
    required double height,
    required double weight,
    required List<String> abilities,  
    double? genderRate,
  }) = _PokemonDetailInfo;
}

extension PokemonDetailInfoExt on PokemonDetailInfo {
  PokemonType get mainType => types.first;
}