import 'package:absen_app/route/app-route.dart';
import 'package:flutter/material.dart';

class AbsenApp extends StatelessWidget {
  const AbsenApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme =       ThemeData(
        scaffoldBackgroundColor: const Color(0xFF4C63D2),
        fontFamily: 'Poppins',);

    return MaterialApp.router(
      routerConfig: AppRoute().router,
      theme: theme
      );
  }
}
