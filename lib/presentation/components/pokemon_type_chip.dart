import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:pokedex/domain/model/pokemon_type.dart';
import 'package:pokedex/util/extentions.dart';

class PokemonTypeChip extends StatelessWidget {
  const PokemonTypeChip({
    super.key,
    required this.type,
  });

  final PokemonType type;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      height: 26,
      decoration: BoxDecoration(
        color: type.color,
        borderRadius: BorderRadius.circular(48),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Row(
        children: [
          Container(
            height: 20,
            width: 20,
            padding: const EdgeInsets.all(3),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: SvgPicture.asset(type.iconAssetPath,
                colorFilter: ColorFilter.mode(
                  type.color,
                  BlendMode.srcIn,
                )),
          ),
          const Gap(6),
          Text(
            type.name.capitalizeFirst(),
            style: textTheme.titleSmall?.copyWith(
              color: type.labelColorOnSurface,
            ),
          ),
        ],
      ),
    );
  }
}
