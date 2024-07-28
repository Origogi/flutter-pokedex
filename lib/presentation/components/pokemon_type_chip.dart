import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:pokedex/domain/model/pokemon_type.dart';
import 'package:pokedex/util/extentions.dart';

class PokemonTypeChip extends StatelessWidget {
  const PokemonTypeChip._({
    required this.type,
    required this.height,
    required this.fontSize,
    this.padding,
    required this.showLabel,
    required this.iconLabelGap,
    required this.fillWidth,
  });

  final PokemonType type;
  final double height;
  final double fontSize;
  final EdgeInsets? padding;
  final double iconLabelGap;
  final bool showLabel;
  final bool fillWidth;

  factory PokemonTypeChip.medium(PokemonType type) {
    return PokemonTypeChip._(
      type: type,
      height: 26,
      fontSize: 12,
      padding: const EdgeInsets.symmetric(horizontal: 6),
      iconLabelGap: 6,
      showLabel: true,
      fillWidth: false,
    );
  }

  factory PokemonTypeChip.large(PokemonType type) {
    return PokemonTypeChip._(
      type: type,
      height: 36,
      fontSize: 14,
      padding: const EdgeInsets.symmetric(horizontal: 14),
      iconLabelGap: 8,
      showLabel: true,
      fillWidth: true,
    );
  }

  factory PokemonTypeChip.small(PokemonType type) {
    return PokemonTypeChip._(
      type: type,
      height: 13,
      fontSize: 14,
      iconLabelGap: 8,
      showLabel: false,
      fillWidth: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      height: height,
      decoration: BoxDecoration(
        color: type.color,
        borderRadius: BorderRadius.circular(48),
      ),
      alignment: Alignment.center,
      padding: padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
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
          if (showLabel) ...[
            Gap(iconLabelGap),
            Text(
              type.name.capitalizeFirst(),
              style: textTheme.labelLarge?.copyWith(
                color: type.labelColorOnSurface,
                fontSize: fontSize,
              ),
            ),
          ]
        ],
      ),
    );
  }
}
