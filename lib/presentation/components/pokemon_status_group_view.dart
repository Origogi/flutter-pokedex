import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:pokedex/domain/model/pokemon_detail_info.dart';
import 'package:pokedex/gen/assets.gen.dart';

class PokemonStatusGroupView extends StatelessWidget {
  const PokemonStatusGroupView({
    super.key,
    required this.info,
  });

  final PokemonDetailInfo info;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: _PokemonStatusView(
                label: 'WEIGHT',
                value: '${info.weight} kg',
                iconPath: Assets.icons.iconWeight,
              ),
            ),
            const Gap(20), 
            Flexible(
              child: _PokemonStatusView(
                label: 'HEIGHT',
                value: '${info.height} m',
                iconPath: Assets.icons.iconHeight,
              ),
            ),
          ],
        ),
        const Gap(20),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: _PokemonStatusView(
                label: 'CATEGORY',
                value: info.category,
                iconPath: Assets.icons.iconCategory,
              ),
            ),
            const Gap(20),
            Flexible(
              child: _PokemonStatusView(
                label: 'ABILITIES',
                value: info.abilities.join('\n'),
                iconPath: Assets.icons.iconAbility,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _PokemonStatusView extends StatelessWidget {
  const _PokemonStatusView({
    required this.label,
    required this.value,
    required this.iconPath,
  });

  final String label;
  final String value;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SvgPicture.asset(
              iconPath,
              width: 20,
              height: 20,
            ),
            const Gap(6),
            Text(
              label,
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: Colors.black.withOpacity(0.6),
                  ),
            ),
          ],
        ),
        const Gap(4),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            vertical: 8,
          ),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black.withOpacity(0.1),
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Text(value,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Colors.black.withOpacity(0.9),
                  )),
        ),
      ],
    );
  }
}
