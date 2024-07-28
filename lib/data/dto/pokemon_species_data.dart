// freezed pokemon species data
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/data/dto/common_data.dart';

part 'pokemon_species_data.freezed.dart';
part 'pokemon_species_data.g.dart';

@freezed
class PokemonSpeciesData with _$PokemonSpeciesData {
  const factory PokemonSpeciesData({
    @JsonKey(name: 'gender_rate') required int genderRate,
    @JsonKey(name: 'flavor_text_entries')
    required List<FlavorTextEntry> flavorTextEntries,
    required List<GeneraData> genera,
    @JsonKey(name: 'evolution_chain')
    required UrlData evolutionChain,
  }) = _PokemonSpeciesData;

  factory PokemonSpeciesData.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpeciesDataFromJson(json);
}

@freezed
class FlavorTextEntry with _$FlavorTextEntry {
  factory FlavorTextEntry({
    @JsonKey(name: 'flavor_text')
    required String flavorText,
    required NameUrlData language,
  }) = _FlavorTextEntry;

  factory FlavorTextEntry.fromJson(Map<String, dynamic> json) =>
      _$FlavorTextEntryFromJson(json);
}

@freezed
class GeneraData with _$GeneraData {
  factory GeneraData({
    required String genus,
    required NameUrlData language,
  }) = _GeneraData;

  factory GeneraData.fromJson(Map<String, dynamic> json) =>
      _$GeneraDataFromJson(json);
}
