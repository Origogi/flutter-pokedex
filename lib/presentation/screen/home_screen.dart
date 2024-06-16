import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/domain/model/home_tab_type.dart';
import 'package:pokedex/presentation/theme/colors.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
          bottomNavigationBar: const _CustomBottomNavigationBar(),
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
        width: 60,
        height: 60,
        child: Center(
          child: AnimatedCrossFade(
            alignment: Alignment.center,
            firstCurve: Curves.easeIn,
            secondCurve: Curves.easeOut,
            duration: const Duration(milliseconds: 200),
            firstChild: _SelectedIcon(tab: tab),
            secondChild: _UnselectedIcon(tab: tab),
            crossFadeState:
                isSelected ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          ),
        ),
      ),
    );
  }
}

class _SelectedIcon extends StatelessWidget {
  const _SelectedIcon({required this.tab});

  final HomeTab tab;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(width: 26, height: 26, tab.onIcon),
        Text(tab.label,
            style: Theme.of(context)
                .textTheme
                .labelSmall
                ?.copyWith(color: Purple)),
      ],
    );
  }
}

class _UnselectedIcon extends StatelessWidget {
  const _UnselectedIcon({required this.tab});

  final HomeTab tab;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      width: 26,
      height: 26,
      tab.offIcon,
      fit: BoxFit.fitHeight,
    );
  }
}
