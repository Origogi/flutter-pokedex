import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:pokedex/gen/assets.gen.dart';

class PokemonGenderRatioView extends StatelessWidget {
  const PokemonGenderRatioView({
    super.key,
    this.genderRate,
  });

  final double? genderRate;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("GENDER", style: Theme.of(context).textTheme.labelSmall),
        const Gap(12),
        if (genderRate == null)
          const _GenderlessView()
        else
          _RatioView(ratio: genderRate!,),
      ],
    );
  }
}

class _GenderlessView extends StatelessWidget {
  const _GenderlessView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Genderless",
      style: Theme.of(context).textTheme.labelMedium,
    );
  }
}

class _RatioView extends StatelessWidget {
  const _RatioView({
    required this.ratio,
  });

  final double ratio;

  @override
  Widget build(BuildContext context) {
    final maleRatio = ((ratio) * 100);
    final femaleRatio = 100 - maleRatio;

    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(49),
          child: Row(
            children: [
              Flexible(
                flex: maleRatio.toInt(),
                child: Container(
                  height: 8,
                  color: const Color(0xFF2551C3),
                ),
              ),
              Flexible(
                flex: femaleRatio.toInt(),
                child: Container(
                  height: 8,
                  color: const Color(0xFFFF7596),
                ),
              ),
            ],
          ),
        ),
        const Gap(6),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(Assets.icons.iconMale),
                const Gap(3),
                Text(
                  '$maleRatio %',
                  style: Theme.of(context).textTheme.labelSmall,
                )
              ],
            ),
            Row(
              children: [
                SvgPicture.asset(Assets.icons.iconFemale),
                const Gap(3),
                Text(
                  '$femaleRatio %',
                  style: Theme.of(context).textTheme.labelSmall,
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
