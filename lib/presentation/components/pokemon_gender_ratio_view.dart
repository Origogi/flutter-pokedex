import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
        ClipRRect(
          borderRadius: BorderRadius.circular(49),
          child: Row(
            children: [
              Flexible(
                flex: 2,
                child: Container(
                  height: 8,
                  color: const Color(0xFF2551C3),
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  height: 8,
                  color: const Color(0xFFFF7596),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
