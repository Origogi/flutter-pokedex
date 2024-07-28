import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pokedex/domain/model/pokemon_card_info.dart';
import 'package:pokedex/gen/assets.gen.dart';
import 'package:pokedex/presentation/components/pokemon_card_view.dart';
import 'package:pokedex/presentation/viewmodel/favorite_tab_view_model.dart';

class FavoritesTab extends HookConsumerWidget {
  const FavoritesTab({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref
        .watch(favoriteTabViewModelProvider.select((state) => state.isLoading));

    final list =
        ref.watch(favoriteTabViewModelProvider.select((state) => state.list));

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 500),
      child: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 20, bottom: 20),
                  child: Text(
                    "Favorites",
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                const Divider(
                  height: 1,
                  color: Color(0xFFF2F2F2),
                ),
                Flexible(
                  child:
                      list.isEmpty ? const _EmptyView() : _ListView(list: list),
                )
              ],
            ),
    );
  }
}

class _ListView extends ConsumerWidget {
  final List<PokemonCardInfo> list;

  const _ListView({
    required this.list,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          final info = list[index];

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Slidable(
              key: Key(info.pokedexId.toString()),
              endActionPane: ActionPane(
                extentRatio: 0.33,
                motion: const ScrollMotion(),
                children: [
                  SlidableAction(
                    autoClose: false,
                    flex: 1,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    ),
                    onPressed: (context) {
                      ref.read(favoriteTabViewModelProvider.notifier).remove(
                            info.pokedexId,
                          );
                    },
                    icon: Icons.delete,
                    label: "Delete",
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.red,
                    // color: Colors.red,
                  ),
                ],
              ),
              child: PokemonCardView.medium(info: info),
            ),
          );
        });
  }
}

class _EmptyView extends StatelessWidget {
  const _EmptyView();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
          ),
          Image.asset(
            Assets.images.noFavBackground.path,
            width: 185,
          ),
          const Gap(8),
          Text(
            "You haven't favorited any Pokémon :(",
            style: Theme.of(context).textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
          const Gap(8),
          Text(
            "Click on the heart icon of your favorite Pokémon and they will appear here",
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
