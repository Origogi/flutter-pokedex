import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:pokedex/domain/model/pokemon_evolution_chain_info.dart';

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
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFFE6E6E6),
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        children: [
          for (final item in items)
            Row(
              children: [
                Image.network(
                  item.imageUrl,
                  width: 50,
                  height: 50,
                ),
                const Gap(8),
                Text(item.name),
              ],
            ),
        ],
      ),
    );
  }
}
