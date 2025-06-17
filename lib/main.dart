import 'package:absen_app/pages/choice_role.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ChoiceRole(),
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF4C63D2),
        fontFamily: 'Poppins',
      ),
    );
  }
}
