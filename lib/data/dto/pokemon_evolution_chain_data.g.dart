// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_evolution_chain_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonEvolutionChainDataImpl _$$PokemonEvolutionChainDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonEvolutionChainDataImpl(
      chain: ChainData.fromJson(json['chain'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PokemonEvolutionChainDataImplToJson(
        _$PokemonEvolutionChainDataImpl instance) =>
    <String, dynamic>{
      'chain': instance.chain,
    };

_$ChainDataImpl _$$ChainDataImplFromJson(Map<String, dynamic> json) =>
    _$ChainDataImpl(
      evolvesTo: (json['evolves_to'] as List<dynamic>)
          .map((e) => ChainData.fromJson(e as Map<String, dynamic>))
          .toList(),
      species: NameUrlData.fromJson(json['species'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ChainDataImplToJson(_$ChainDataImpl instance) =>
    <String, dynamic>{
      'evolves_to': instance.evolvesTo,
      'species': instance.species,
    };
