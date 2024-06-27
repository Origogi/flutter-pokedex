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