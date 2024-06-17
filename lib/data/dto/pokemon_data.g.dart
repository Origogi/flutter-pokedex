// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonDataImpl _$$PokemonDataImplFromJson(Map<String, dynamic> json) =>
    _$PokemonDataImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      height: (json['height'] as num).toDouble(),
      weight: (json['weight'] as num).toDouble(),
      types: (json['types'] as List<dynamic>)
          .map((e) => PokemonTypeData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PokemonDataImplToJson(_$PokemonDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'height': instance.height,
      'weight': instance.weight,
      'types': instance.types,
    };

_$PokemonTypeDataImpl _$$PokemonTypeDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonTypeDataImpl(
      slot: (json['slot'] as num).toInt(),
      type: NameUrlData.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PokemonTypeDataImplToJson(
        _$PokemonTypeDataImpl instance) =>
    <String, dynamic>{
      'slot': instance.slot,
      'type': instance.type,
    };
