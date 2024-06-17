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
    );

Map<String, dynamic> _$$PokemonDataImplToJson(_$PokemonDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'height': instance.height,
      'weight': instance.weight,
    };
