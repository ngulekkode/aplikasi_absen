import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:absen_app/pages/choice_role.dart';
import 'package:absen_app/pages/login.dart';
import 'package:absen_app/pages/home.dart';
import 'package:absen_app/pages/karyawanhome.dart';
// import 'package:absen_app/pages/managerhome.dart';
import 'package:absen_app/pages/cuti.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(path: '/', builder: (context, state) => const ChoiceRole()),
      GoRoute(
        path: '/login/:role',
        builder: (context, state) {
          final role = state.pathParameters['role']!;
          return LoginPage(role: role);
        },
      ),
      GoRoute(
        path: '/home/manager',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/home/karyawan',
        builder: (context, state) => const EmployeHome (),
      ),
      GoRoute(
        path: '/cuti',
        builder: (context, state) => const LeaveRequestPage(),
      ),
    ],
  );
});

