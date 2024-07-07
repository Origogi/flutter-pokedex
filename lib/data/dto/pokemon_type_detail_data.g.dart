// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_type_detail_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonTypeDetailDataImpl _$$PokemonTypeDetailDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonTypeDetailDataImpl(
      demageRelations: DamageRelationsData.fromJson(
          json['damage_relations'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PokemonTypeDetailDataImplToJson(
        _$PokemonTypeDetailDataImpl instance) =>
    <String, dynamic>{
      'damage_relations': instance.demageRelations,
    };

_$DamageRelationsDataImpl _$$DamageRelationsDataImplFromJson(
        Map<String, dynamic> json) =>
    _$DamageRelationsDataImpl(
      doubleDamageFrom: (json['double_damage_from'] as List<dynamic>)
          .map((e) => NameUrlData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DamageRelationsDataImplToJson(
        _$DamageRelationsDataImpl instance) =>
    <String, dynamic>{
      'double_damage_from': instance.doubleDamageFrom,
    };
