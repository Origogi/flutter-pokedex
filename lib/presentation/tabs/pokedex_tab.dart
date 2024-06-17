import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter/material.dart';
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
    final list =
        ref.watch(pokemonListViewModelProvider.select((state) => state.list));

    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        final pokemon = list[index];
        return PokemonCardView(info: pokemon);
      },
    );
  }
}
