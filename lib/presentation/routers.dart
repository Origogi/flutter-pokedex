import 'package:auto_route/auto_route.dart';
import 'package:pokedex/presentation/screen/home_screen.dart';

part 'routers.gr.dart';


@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeRoute.page, initial: true)
  ];
}