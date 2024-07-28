import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:pokedex/domain/model/pokemon_evolution_chain_info.dart';
import 'package:pokedex/gen/assets.gen.dart';
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
      child: ListView.separated(
          padding: const EdgeInsets.all(0),
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: items.length,
          separatorBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: SvgPicture.asset(
                  Assets.icons.iconArrowDown,
                  width: 24,
                ),
              ),
          itemBuilder: (context, index) {
            return PokemonCardView.small(info: items[index]);
          }),
    );
  }
}
