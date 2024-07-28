import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/data/dto/common_data.dart';

part 'pokemon_data.freezed.dart';
part 'pokemon_data.g.dart';

@freezed
class PokemonData with _$PokemonData {
  const factory PokemonData({
    required int id,
    required String name,
    required double height,
    required double weight,
    required List<PokemonTypeData> types,
    required SpritesData sprites,
    required List<PokemonAbilityData> abilities,
  }) = _PokemonData;

  factory PokemonData.fromJson(Map<String, dynamic> json) =>
      _$PokemonDataFromJson(json);
}


@freezed
class PokemonTypeData with _$PokemonTypeData {
  const factory PokemonTypeData({
    required int slot,
    required NameUrlData type,
  }) = _PokemonTypeData;

  factory PokemonTypeData.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeDataFromJson(json);
  
}

@freezed
class SpritesData with _$SpritesData {
  const factory SpritesData({
    @JsonKey(name: 'front_default')
    required String frontDefault,
    required OtherData other,
    required VersionsData versions,
  }) = _SpritesData;

  factory SpritesData.fromJson(Map<String, dynamic> json) =>
      _$SpritesDataFromJson(json);
}

@freezed
class OtherData with _$OtherData {
  const factory OtherData({
    required ImageUrlSetData showdown,
  }) = _OtherData;

  factory OtherData.fromJson(Map<String, dynamic> json) =>
      _$OtherDataFromJson(json);
}

@freezed
class PokemonAbilityData with _$PokemonAbilityData {
  const factory PokemonAbilityData({
    required NameUrlData ability,
  }) = _PokemonAbilityData;

  factory PokemonAbilityData.fromJson(Map<String, dynamic> json) =>
      _$PokemonAbilityDataFromJson(json);
}

@freezed
class VersionsData with _$VersionsData {
  const factory VersionsData({
    @JsonKey(name: 'generation-vii')
    required GenerationVIIData generationVII,
  }) = _VersionsData;

  factory VersionsData.fromJson(Map<String, dynamic> json) =>
      _$VersionsDataFromJson(json);
}

@freezed
class GenerationVIIData with _$GenerationVIIData {
  const factory GenerationVIIData({
    required ImageUrlSetData icons,
  }) = _GenerationVIIData;

  factory GenerationVIIData.fromJson(Map<String, dynamic> json) =>
      _$GenerationVIIDataFromJson(json);
}
