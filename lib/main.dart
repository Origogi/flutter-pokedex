import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/presentation/routers.dart';
import 'package:pokedex/presentation/theme/text_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();

    return ProviderScope(
      child: MaterialApp.router(
          routerConfig: appRouter.config(),
          theme: ThemeData(
              textTheme: const CustomTextTheme()),
    ));
  }
}

