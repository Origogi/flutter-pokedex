import 'package:flutter/material.dart';
import 'package:pokedex/domain/model/pokemon_card_info.dart';
import 'package:pokedex/util/extentions.dart';

class PokemonCardView extends StatelessWidget {
  final PokemonCardInfo info;

  const PokemonCardView({Key? key, required this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final textTheme = Theme.of(context).textTheme;


    return Card(
      elevation: 0,
      
      color: info.mainType.bgColor,
      shape : RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: SizedBox(
        height: 102,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Text(info.name.capitalizeFirst(), style: textTheme.titleMedium,),
                Text(info.types.map((e) => e.name).join(', ')),
              ],
            ),
            Image.network(info.imageUrl)
          ],
        ),
      ),
    );
  }
}