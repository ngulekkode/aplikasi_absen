import 'package:absen_app/route/app-route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AbsenApp extends ConsumerWidget {
  const AbsenApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Router = ref.watch(routerProvider);
    final ThemeData theme = ThemeData(
      scaffoldBackgroundColor: const Color(0xFF4C63D2),
      fontFamily: 'Poppins',
    );

    return MaterialApp.router(
      routerConfig: Router,
      theme: theme,
      debugShowCheckedModeBanner: false,
      supportedLocales: const [Locale('id', 'ID')],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
    );
  }
}
