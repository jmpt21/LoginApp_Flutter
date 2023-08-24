import 'package:go_router/go_router.dart';
import 'package:login_app/presentation/screens/home_screen.dart';
import 'package:login_app/presentation/screens/login_screen.dart';
import 'package:login_app/presentation/screens/register_screen.dart';
import 'package:login_app/presentation/screens/settings_screen.dart';

final routerConfig = GoRouter(initialLocation: '/', routes: <GoRoute>[
  GoRoute(
      path: '/',
      name: HomeScreen.routeName,
      builder: (context, state) => const HomeScreen()),
  GoRoute(
      path: '/login_screen',
      name: LoginScreen.routeName,
      builder: (context, state) => const LoginScreen()),
  GoRoute(
      path: '/register_screen',
      name: RegisterScreen.routeName,
      builder: (context, state) => const RegisterScreen()),
  GoRoute(
      path: '/settings_screen',
      name: SettingsScreen.routeName,
      builder: (context, state) => const SettingsScreen())
]);
