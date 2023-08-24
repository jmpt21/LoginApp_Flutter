import 'package:go_router/go_router.dart';
import 'package:login_app/presentation/screens/home_screen.dart';

final routerConfig = GoRouter(initialLocation: '/', routes: <GoRoute>[
  GoRoute(
      path: '/',
      name: HomeScreen.routeName,
      builder: (context, state) => const HomeScreen())
]);
