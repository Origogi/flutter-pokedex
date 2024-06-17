import 'package:flutter/material.dart';
import 'package:pokedex/domain/model/pokemon_card_info.dart';

class PokemonCardView extends StatelessWidget {
  final PokemonCardInfo info;

  const PokemonCardView({Key? key, required this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.network(info.imageUrl),
          Text(info.name),
          Text(info.types.map((e) => e.name).join(', ')),
        ],
      ),
    );
  }
}