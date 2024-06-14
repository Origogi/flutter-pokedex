import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/domain/model/home_tab_type.dart';
import 'package:pokedex/gen/assets.gen.dart';
import 'package:pokedex/presentation/theme/colors.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Text('Welcome to the Home Screen!'),
          ),
          bottomNavigationBar: _CustomBottomNavigationBar(),
        ),
      ),
    );
  }
}

class _CustomBottomNavigationBar extends HookConsumerWidget {
  const _CustomBottomNavigationBar();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedTab = useState(HomeTab.pokedex);

    final List<Widget> widgets = HomeTab.values.map((tab) {
      return _CustomBottomNavigationBarItem(
        isSelected: selectedTab.value == tab,
        tab: tab,
        onTap: () {
          selectedTab.value = tab;
        },
      );
    }).toList();

    return SizedBox(
      height: 72,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: widgets),
    );
  }
}

class _CustomBottomNavigationBarItem extends ConsumerWidget {
  const _CustomBottomNavigationBarItem({
    required this.isSelected,
    required this.tab,
    required this.onTap,
  });

  final bool isSelected;
  final HomeTab tab;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: 56,
        width: 56,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
                width: 26, height: 26, isSelected ? tab.onIcon : tab.offIcon),
            if (isSelected)
              Text("Pokedéx",
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall
                      ?.copyWith(color: Purple)),
          ],
        ),
      ),
    );
  }
}
