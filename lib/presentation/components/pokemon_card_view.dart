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

enum PokemonCardViewSize {
  small,
  medium,
}

class PokemonCardView extends StatelessWidget {
  final PokemonCardInfo info;
  final PokemonCardViewSize size;

  const PokemonCardView._({
    Key? key,
    required this.info,
    required this.size,
  }) : super(key: key);

  factory PokemonCardView.medium({
    Key? key,
    required PokemonCardInfo info,
  }) {
    return PokemonCardView._(
      key: key,
      info: info,
      size: PokemonCardViewSize.medium,
    );
  }

  factory PokemonCardView.small({
    Key? key,
    required PokemonCardInfo info,
  }) {
    return PokemonCardView._(
      key: key,
      info: info,
      size: PokemonCardViewSize.small,
    );
  }

  @override
  Widget build(BuildContext context) {
    switch (size) {
      case PokemonCardViewSize.medium:
        return _MediumWidget(info);
      case PokemonCardViewSize.small:
        return _SmallWidget(info);
    }
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

class _MediumWidget extends StatelessWidget {
  const _MediumWidget(this.info);

  final PokemonCardInfo info;

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
                        style: textTheme.titleSmall?.copyWith(color: Black800),
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

class _SmallWidget extends StatelessWidget {
  const _SmallWidget(this.info);

  final PokemonCardInfo info;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final name = info.name.split('-').first.capitalizeFirst();

    return Container(
      height: 74,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFFE6E6E6),
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(96.0),
      ),
      child: Row(
        children: [
          SizedBox(
            height: 74,
            width: 96,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 96,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: info.mainType.color,
                    borderRadius: BorderRadius.circular(71),
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
                Image.network(
                  info.imageUrl,
                  width: 80,
                  height: 80,
                  fit: BoxFit.contain,
                ),
              ],
            ),
          ),
          const Gap(12),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: textTheme.labelLarge?.copyWith(color: Black900),
                ),
                Text(
                  info.pokedexId.pokedexIdFormat(),
                  style: textTheme.labelSmall?.copyWith(color: Black700),
                ),
                const Gap(4),
                Row(
                    mainAxisSize: MainAxisSize.min,
                    children: info.types
                        .mapIndexed((i, type) => Expanded(
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: i == 0 ? 0 : 4),
                                  child: PokemonTypeChip.small(type)),
                            ))
                        .toList()),
              ],
            ),
          ),
          const Gap(48)
        ],
      ),
    );
  }
}
