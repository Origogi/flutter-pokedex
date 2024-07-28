
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/model/pokemon_card_info.dart';

part 'pokemon_evolution_chain_info.freezed.dart';

@freezed
class PokemonEvolutionChainInfo with _$PokemonEvolutionChainInfo {
  const factory PokemonEvolutionChainInfo({
    required PokemonCardInfo cardInfo,
    PokemonEvolutionChainInfo? next,
  }) = _PokemonEvolutionChainInfo;

}

extension PokemonEvolutionChainInfoExt on PokemonEvolutionChainInfo {
  List<PokemonCardInfo> toList() {
    final list = <PokemonCardInfo>[];
    PokemonEvolutionChainInfo? current = this;

    while (current != null) {
      list.add(current.cardInfo);
      current = current.next;
    }

    return list;
  }
}