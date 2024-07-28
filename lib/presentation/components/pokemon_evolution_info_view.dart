import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:pokedex/domain/model/pokemon_evolution_chain_info.dart';
import 'package:pokedex/presentation/components/pokemon_card_view.dart';

class PokemonEvolutionInfoView extends StatelessWidget {
  const PokemonEvolutionInfoView({
    super.key,
    required this.info,
  });

  final PokemonEvolutionChainInfo info;

  @override
  Widget build(BuildContext context) {
    final items = info.toList();

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFFE6E6E6),
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        children: [
          for (final item in items)
            PokemonCardView.small(info: item),
        ],
      ),
    );
  }
}
