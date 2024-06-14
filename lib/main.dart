import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/presentation/routers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();

    final textTheme = Theme.of(context).textTheme;

    return ProviderScope(
      child: MaterialApp.router(
          routerConfig: appRouter.config(),
          theme: ThemeData(
              textTheme: GoogleFonts.poppinsTextTheme(textTheme).copyWith(
            labelSmall: GoogleFonts.poppins()
                .copyWith(fontSize: 12, fontWeight: FontWeight.w500),
          ))),
    );
  }
}

class CustomTextTheme extends TextTheme {
  final TextTheme textTheme;

  const CustomTextTheme(this.textTheme);

  @override
  TextStyle? get labelMedium => GoogleFonts.poppins();
}
