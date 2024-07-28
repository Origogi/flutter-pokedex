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
      sprites: SpritesData.fromJson(json['sprites'] as Map<String, dynamic>),
      abilities: (json['abilities'] as List<dynamic>)
          .map((e) => PokemonAbilityData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PokemonDataImplToJson(_$PokemonDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'height': instance.height,
      'weight': instance.weight,
      'types': instance.types,
      'sprites': instance.sprites,
      'abilities': instance.abilities,
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

_$SpritesDataImpl _$$SpritesDataImplFromJson(Map<String, dynamic> json) =>
    _$SpritesDataImpl(
      frontDefault: json['front_default'] as String,
      other: OtherData.fromJson(json['other'] as Map<String, dynamic>),
      versions: VersionsData.fromJson(json['versions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SpritesDataImplToJson(_$SpritesDataImpl instance) =>
    <String, dynamic>{
      'front_default': instance.frontDefault,
      'other': instance.other,
      'versions': instance.versions,
    };

_$OtherDataImpl _$$OtherDataImplFromJson(Map<String, dynamic> json) =>
    _$OtherDataImpl(
      showdown:
          ImageUrlSetData.fromJson(json['showdown'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OtherDataImplToJson(_$OtherDataImpl instance) =>
    <String, dynamic>{
      'showdown': instance.showdown,
    };

_$PokemonAbilityDataImpl _$$PokemonAbilityDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonAbilityDataImpl(
      ability: NameUrlData.fromJson(json['ability'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PokemonAbilityDataImplToJson(
        _$PokemonAbilityDataImpl instance) =>
    <String, dynamic>{
      'ability': instance.ability,
    };

_$VersionsDataImpl _$$VersionsDataImplFromJson(Map<String, dynamic> json) =>
    _$VersionsDataImpl(
      generationVII: GenerationVIIData.fromJson(
          json['generation-vii'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VersionsDataImplToJson(_$VersionsDataImpl instance) =>
    <String, dynamic>{
      'generation-vii': instance.generationVII,
    };

_$GenerationVIIDataImpl _$$GenerationVIIDataImplFromJson(
        Map<String, dynamic> json) =>
    _$GenerationVIIDataImpl(
      icons: ImageUrlSetData.fromJson(json['icons'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GenerationVIIDataImplToJson(
        _$GenerationVIIDataImpl instance) =>
    <String, dynamic>{
      'icons': instance.icons,
    };
