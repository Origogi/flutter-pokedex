import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/domain/model/pokedex_id_range.dart';
import 'package:pokedex/domain/model/region_type.dart';
import 'package:pokedex/presentation/components/pokemon_card_view.dart';
import 'package:pokedex/presentation/viewmodel/pokemon_list_view_model.dart';

class PokedexTab extends StatefulWidget {
  const PokedexTab({
    super.key,
  });

  @override
  State<PokedexTab> createState() => _PokedexTabState();
}

class _PokedexTabState extends State<PokedexTab>
    with AutomaticKeepAliveClientMixin<PokedexTab> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return const _Body();
  }

  @override
  bool get wantKeepAlive => true;
}

// hook consumer widget _body
class _Body extends HookConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokedexIdRange = PokedexIdRange(
        start: RegionType.kanto.startPokedexId,
        end: RegionType.alola.endPokedexId);

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

    return ListView.builder(
      controller: controller,
      itemCount: list.length + (needLoadMore ? 1 : 0),
      itemBuilder: (context, index) {
        if (index == list.length) {
          return const SizedBox(
            height: 90,
            child: Center(
              child: SizedBox(
                  width: 30, height: 30, child: CircularProgressIndicator()),
            ),
          );
        } else {
          final pokemon = list[index];
          return PokemonCardView(info: pokemon);
        }
      },
    );
  }
}
