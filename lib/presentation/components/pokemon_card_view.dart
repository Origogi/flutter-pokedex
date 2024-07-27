import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:pokedex/domain/model/pokemon_card_info.dart';
import 'package:pokedex/gen/assets.gen.dart';
import 'package:pokedex/presentation/components/pokemon_type_chip.dart';
import 'package:pokedex/presentation/routers.dart';
import 'package:pokedex/presentation/theme/colors.dart';
import 'package:pokedex/presentation/viewmodel/favorite_button_view_model.dart';
import 'package:pokedex/util/extentions.dart';

class PokemonCardView extends StatelessWidget {
  final PokemonCardInfo info;

  const PokemonCardView({
    Key? key,
    required this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final name = info.name.split('-').first.capitalizeFirst();

    return GestureDetector(
      onTap: () => context.pushRoute(
        PokemonDetailRoute(
          pokdexId: info.pokedexId,
        ),
      ),
      child: Card(
        elevation: 0,
        margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
        color: info.mainType.bgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          children: [
            Container(
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
                        style:
                            textTheme.titleSmall?.copyWith(color: Black800),
                      ),
                      Text(
                        name,
                        style: textTheme.titleMedium,
                      ),
                      const Gap(4),
                      Row(
                          children: info.types
                              .mapIndexed((i, type) => Padding(
                                  padding:
                                      EdgeInsets.only(left: i == 0 ? 0 : 4),
                                  child: PokemonTypeChip.medium(type)))
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
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: SvgPicture.asset(
                          info.mainType.iconGradientAssetPath,
                          width: 126,
                          height: 126,
                        ),
                      ),
                      Image.network(info.imageUrl),
                      Positioned(
                        top: 6,
                        right: 12,
                        child: _FavButton(
                          pokdexId: info.pokedexId,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _FavButton extends ConsumerWidget {
  const _FavButton({
    required this.pokdexId,
  });

  final int pokdexId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isFav = ref.watch(favoriteButtonViewModelProvider(pokdexId)
        .select((state) => state.isFavorite));

    return GestureDetector(
      onTap: () {
        ref
            .read(favoriteButtonViewModelProvider(pokdexId).notifier)
            .toggleFavorite();
      },
      child: AnimatedCrossFade(
        duration: const Duration(milliseconds: 300),
        firstChild: SvgPicture.asset(
          Assets.icons.iconFavOff3,
          width: 32,
          height: 32,
        ),
        secondChild: SvgPicture.asset(
          Assets.icons.iconFavOn3,
          width: 32,
          height: 32,
        ),
        crossFadeState:
            isFav ? CrossFadeState.showSecond : CrossFadeState.showFirst,
      ),
    );
  }
}
