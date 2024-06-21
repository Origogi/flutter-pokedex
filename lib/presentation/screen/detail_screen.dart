import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/domain/model/pokemon_type.dart';

@RoutePage()
class DetailScreen extends HookConsumerWidget {
  const DetailScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: Colors.white,
      child: PokemonTypeBackground(color: PokemonType.fire.color),
    );
  }
}

class PokemonTypeBackground extends StatelessWidget {
  final Color color;

  const PokemonTypeBackground({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size.infinite,
      painter: _PokemonTypeBackgroundPainter(color),
    );
  }
}

class _PokemonTypeBackgroundPainter extends CustomPainter {
  final Color color;

  _PokemonTypeBackgroundPainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(0, 200)
      ..quadraticBezierTo(size.width / 2, 330, size.width, 200)
      ..lineTo(size.width, 0)
      ..close();

    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
