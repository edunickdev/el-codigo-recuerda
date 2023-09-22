import 'package:go_router/go_router.dart';

import '../screens/screens.dart';

final GoRouter router = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/mains',
      builder: (context, state) => const MainScreen(),
    ),
    GoRoute(
      path: '/others',
      builder: (context, state) => const OthersScreen(),
    ),
    GoRoute(
      path: '/projects',
      builder: (context, state) => const ProjectsScreen(),
    ),
    GoRoute(
      path: '/me',
      builder: (context, state) => const AboutMeScreen(),
    ),
    GoRoute(
      path: '/contact',
      builder: (context, state) => const ContactScreen(),
    ),
  ],
);
