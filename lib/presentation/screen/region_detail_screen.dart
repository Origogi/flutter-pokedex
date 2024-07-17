import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pokedex/domain/model/pokedex_id_range.dart';
import 'package:pokedex/domain/model/region_type.dart';
import 'package:pokedex/gen/assets.gen.dart';
import 'package:pokedex/presentation/components/pokemon_card_view.dart';
import 'package:pokedex/presentation/viewmodel/pokemon_list_view_model.dart';

@RoutePage()
class RegionDetailScreen extends HookConsumerWidget {
  const RegionDetailScreen({
    Key? key,
    required this.regionType,
  }) : super(key: key);

  final RegionType regionType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokedexIdRange = PokedexIdRange(
        start: regionType.startPokedexId, end: regionType.endPokedexId);

    final list = ref.watch(pokemonListViewModelProvider(pokedexIdRange)
        .select((state) => state.list));

    final needLoadMore =
        ref.watch(pokemonListViewModelProvider(pokedexIdRange).select((state) {
      return state.isEndOfList == false && state.list.isNotEmpty;
    }));

    final controller = useScrollController();

    useEffect(() {
      controller.addListener(() {
        if (controller.position.pixels >=
            controller.position.maxScrollExtent - 100) {
          ref
              .read(pokemonListViewModelProvider(pokedexIdRange).notifier)
              .loadMore();
        }
      });
      return null;
    }, []);

    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.transparent,
        toolbarHeight: 80,
        leadingWidth: 48,
        leading: Container(
          margin: const EdgeInsets.only(left: 16),
          child: GestureDetector(
            onTap: () => context.router.back(),
            child: SvgPicture.asset(
              Assets.icons.iconArrowLeft2,
              width: 32,
              height: 32,
            ),
          ),
        ),
        titleSpacing: 22,
        title: Text(
          regionType.name,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        centerTitle: false,
      ),
      body: Column(
        children: [
          const Divider(
            height: 1,
            color: Color(0xFFF2F2F2),
          ),
          Flexible(
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              child: list.isEmpty
                  ? const Center(
                      key: ValueKey("loading"),
                      child: CircularProgressIndicator())
                  : ListView.builder(
                      key: const ValueKey("loaded"),
                      controller: controller,
                      itemCount: list.length + (needLoadMore ? 1 : 0),
                      itemBuilder: (context, index) {
                        if (index == list.length) {
                          return const SizedBox(
                            height: 90,
                            child: Center(
                              child: SizedBox(
                                  width: 30,
                                  height: 30,
                                  child: CircularProgressIndicator()),
                            ),
                          );
                        } else {
                          final pokemon = list[index];
                          return PokemonCardView(info: pokemon);
                        }
                      },
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
