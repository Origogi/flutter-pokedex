import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:pokedex/domain/model/pokemon_card_info.dart';
import 'package:pokedex/presentation/components/pokemon_type_chip.dart';
import 'package:pokedex/presentation/routers.dart';
import 'package:pokedex/presentation/theme/colors.dart';
import 'package:pokedex/util/extentions.dart';

class PokemonCardView extends StatelessWidget {
  final PokemonCardInfo info;

  const PokemonCardView({Key? key, required this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: GestureDetector(
        onTap: () => context.pushRoute(
          DetailRoute(
            pokdexId: info.pokedexId,
          ),
        ),
        child: Card(
          elevation: 0,
          color: info.mainType.bgColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Container(
            padding: const EdgeInsets.only(left: 16),
            height: 102,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      info.pokedexId.pokedexIdFormat(),
                      style: textTheme.titleSmall?.copyWith(color: Black800),
                    ),
                    Text(
                      info.name.capitalizeFirst(),
                      style: textTheme.titleMedium,
                    ),
                    const Gap(4),
                    Row(
                        children: info.types
                            .mapIndexed((i, type) => Padding(
                                padding: EdgeInsets.only(left: i == 0 ? 0 : 4),
                                child: PokemonTypeChip(type: type)))
                            .toList()),
                  ],
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 126,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: info.mainType.color,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4),
                      child: SvgPicture.asset(
                        info.mainType.iconGradientAssetPath,
                        width: 126,
                        height: 126,
                      ),
                    ),
                    Image.network(info.imageUrl),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
