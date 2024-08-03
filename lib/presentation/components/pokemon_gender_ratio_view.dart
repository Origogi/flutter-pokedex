import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:pokedex/gen/assets.gen.dart';
import 'package:pokedex/presentation/theme/common_colors.dart';

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
          _RatioView(
            ratio: genderRate!,
          ),
      ],
    );
  }
}

class _GenderlessView extends StatelessWidget {
  const _GenderlessView();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const _StripedProgressBar(),
        const Gap(6),
        Text(
          "Unknown",
          style: Theme.of(context).textTheme.labelSmall,
        ),
      ],
    );
  }
}

class _StripedProgressBar extends StatelessWidget {
  const _StripedProgressBar();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: Colors.black.withOpacity(0.1), width: 1),
      ),
      child: CustomPaint(
        size: const Size(double.infinity, double.infinity),
        painter: StripedProgressBarPainter(),
      ),
    );
  }
}

class StripedProgressBarPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const stripeColor = Color(0xFFE6E6E6);
    const stripeWidth = 1.0;
    const stripeSpacing = 15.0;
    final totalWidth = size.width;

    double currentX = -stripeWidth;
    final paint = Paint()
      ..color = stripeColor
      ..strokeWidth = stripeWidth;

    while (currentX < totalWidth) {
      if (currentX > 0) {
        canvas.drawLine(
          Offset(currentX, 0),
          Offset(currentX - 5, size.height),
          paint,
        );
      }

      currentX += (stripeWidth + stripeSpacing);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
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
                  color: MaleColor,
                ),
              ),
              Flexible(
                flex: femaleRatio.toInt(),
                child: Container(
                  height: 8,
                  color: FemaleColor,
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
