import 'package:go_router/go_router.dart';
import 'package:absen_app/pages/choice_role.dart';
import 'package:absen_app/pages/login.dart';
import 'package:absen_app/pages/karyawanhome.dart';
import 'package:absen_app/pages/managerhome.dart';

class AppRoute {
  final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(path: '/', builder: (context, state) => ChoiceRole()),
      GoRoute(
        path: '/login/:role',
        builder: (context, state) {
          final role = state.pathParameters['role']!;
          return LoginPage(role: role);
        },
      ),
      GoRoute(
        path: '/home/manager',
        builder: (context, state) => const ManagerHome(),
      ),
      GoRoute(
        path: '/home/karyawan',
        builder: (context, state) => const EmployeHome(),
      ),
    ],
  );
}

