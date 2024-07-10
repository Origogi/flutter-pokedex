// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'routers.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    PokemonDetailRoute.name: (routeData) {
      final args = routeData.argsAs<PokemonDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PokemonDetailScreen(
          key: args.key,
          pokdexId: args.pokdexId,
        ),
      );
    },
    RegionDetailRoute.name: (routeData) {
      final args = routeData.argsAs<RegionDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: RegionDetailScreen(
          key: args.key,
          regionType: args.regionType,
        ),
      );
    },
  };
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PokemonDetailScreen]
class PokemonDetailRoute extends PageRouteInfo<PokemonDetailRouteArgs> {
  PokemonDetailRoute({
    Key? key,
    required int pokdexId,
    List<PageRouteInfo>? children,
  }) : super(
          PokemonDetailRoute.name,
          args: PokemonDetailRouteArgs(
            key: key,
            pokdexId: pokdexId,
          ),
          initialChildren: children,
        );

  static const String name = 'PokemonDetailRoute';

  static const PageInfo<PokemonDetailRouteArgs> page =
      PageInfo<PokemonDetailRouteArgs>(name);
}

class PokemonDetailRouteArgs {
  const PokemonDetailRouteArgs({
    this.key,
    required this.pokdexId,
  });

  final Key? key;

  final int pokdexId;

  @override
  String toString() {
    return 'PokemonDetailRouteArgs{key: $key, pokdexId: $pokdexId}';
  }
}

/// generated route for
/// [RegionDetailScreen]
class RegionDetailRoute extends PageRouteInfo<RegionDetailRouteArgs> {
  RegionDetailRoute({
    Key? key,
    required RegionType regionType,
    List<PageRouteInfo>? children,
  }) : super(
          RegionDetailRoute.name,
          args: RegionDetailRouteArgs(
            key: key,
            regionType: regionType,
          ),
          initialChildren: children,
        );

  static const String name = 'RegionDetailRoute';

  static const PageInfo<RegionDetailRouteArgs> page =
      PageInfo<RegionDetailRouteArgs>(name);
}

class RegionDetailRouteArgs {
  const RegionDetailRouteArgs({
    this.key,
    required this.regionType,
  });

  final Key? key;

  final RegionType regionType;

  @override
  String toString() {
    return 'RegionDetailRouteArgs{key: $key, regionType: $regionType}';
  }
}
