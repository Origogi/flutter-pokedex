
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/data/dto/common_data.dart';

part 'pokemon_type_detail_data.freezed.dart';
part 'pokemon_type_detail_data.g.dart';

@freezed
class PokemonTypeDetailData with _$PokemonTypeDetailData {
  const factory PokemonTypeDetailData({
    @JsonKey(name: 'damage_relations')
    required DamageRelationsData demageRelations ,
  }) = _PokemonTypeDetailData;

  factory PokemonTypeDetailData.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeDetailDataFromJson(json);
}

@freezed
class DamageRelationsData with _$DamageRelationsData {
  const factory DamageRelationsData({
    @JsonKey(name: 'double_damage_from')
    required List<NameUrlData> doubleDamageFrom,
  }) = _DamageRelationsData;

  factory DamageRelationsData.fromJson(Map<String, dynamic> json) =>
      _$DamageRelationsDataFromJson(json);
}