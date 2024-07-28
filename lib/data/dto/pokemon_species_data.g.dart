// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_species_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonSpeciesDataImpl _$$PokemonSpeciesDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonSpeciesDataImpl(
      genderRate: (json['gender_rate'] as num).toInt(),
      flavorTextEntries: (json['flavor_text_entries'] as List<dynamic>)
          .map((e) => FlavorTextEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
      genera: (json['genera'] as List<dynamic>)
          .map((e) => GeneraData.fromJson(e as Map<String, dynamic>))
          .toList(),
      evolutionChain:
          UrlData.fromJson(json['evolution_chain'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PokemonSpeciesDataImplToJson(
        _$PokemonSpeciesDataImpl instance) =>
    <String, dynamic>{
      'gender_rate': instance.genderRate,
      'flavor_text_entries': instance.flavorTextEntries,
      'genera': instance.genera,
      'evolution_chain': instance.evolutionChain,
    };

_$FlavorTextEntryImpl _$$FlavorTextEntryImplFromJson(
        Map<String, dynamic> json) =>
    _$FlavorTextEntryImpl(
      flavorText: json['flavor_text'] as String,
      language: NameUrlData.fromJson(json['language'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FlavorTextEntryImplToJson(
        _$FlavorTextEntryImpl instance) =>
    <String, dynamic>{
      'flavor_text': instance.flavorText,
      'language': instance.language,
    };

_$GeneraDataImpl _$$GeneraDataImplFromJson(Map<String, dynamic> json) =>
    _$GeneraDataImpl(
      genus: json['genus'] as String,
      language: NameUrlData.fromJson(json['language'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GeneraDataImplToJson(_$GeneraDataImpl instance) =>
    <String, dynamic>{
      'genus': instance.genus,
      'language': instance.language,
    };
