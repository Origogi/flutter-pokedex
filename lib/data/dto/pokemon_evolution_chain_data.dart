

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/data/dto/common_data.dart';

part 'pokemon_evolution_chain_data.freezed.dart';
part 'pokemon_evolution_chain_data.g.dart';

@freezed
class PokemonEvolutionChainData with _$PokemonEvolutionChainData {
  const factory PokemonEvolutionChainData({
    required ChainData chain,
  }) = _PokemonEvolutionChainData;

  factory PokemonEvolutionChainData.fromJson(Map<String, dynamic> json) =>
      _$PokemonEvolutionChainDataFromJson(json);
}

@freezed
class ChainData with _$ChainData {
  const factory ChainData({
    @JsonKey(name: 'evolves_to')
    required List<ChainData> evolvesTo,
    required NameUrlData species,
  }) = _ChainData;

  factory ChainData.fromJson(Map<String, dynamic> json) =>
      _$ChainDataFromJson(json);
}