import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:pokedex/domain/model/region_type.dart';
import 'package:pokedex/presentation/screen/pokemon_detail_screen.dart';
import 'package:pokedex/presentation/screen/home_screen.dart';
import 'package:pokedex/presentation/screen/region_detail_screen.dart';

part 'routers.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true),
        CustomRoute(
          page: PokemonDetailRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
          durationInMilliseconds: 300,
          fullscreenDialog: true,
        ),
        AutoRoute(page: RegionDetailRoute.page),
      ];
      
}
