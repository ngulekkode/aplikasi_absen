import 'package:absen_app/app.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:absen_app/main.dart';
import 'package:absen_app/pages/choice_role.dart';
import 'package:absen_app/pages/login.dart';
import 'package:absen_app/pages/roles/employe.dart';
import 'package:absen_app/pages/roles/manager.dart';


class AppRoute{
  final GoRouter router = GoRouter(
    initialLocation: '/',
  routes: [
    GoRoute(path: '/',
    builder: (context, state) => ChoiceRole()),

    GoRoute(path: '/Login',
    builder: (_,__) => LoginPage(role: 'manager')),

    
  ]

  
  );
}