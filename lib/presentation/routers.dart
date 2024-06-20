import 'package:auto_route/auto_route.dart';
import 'package:pokedex/presentation/screen/detail_screen.dart';
import 'package:pokedex/presentation/screen/home_screen.dart';

part 'routers.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true),
        CustomRoute(
          page: DetailRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
          durationInMilliseconds: 300,
          fullscreenDialog: true,
        )
      ];
}
