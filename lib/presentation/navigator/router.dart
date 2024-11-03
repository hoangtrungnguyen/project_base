
// Define your route paths
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project_base/presentation/screens/auth/auth.dart';
import 'package:project_base/presentation/screens/home/home.dart';

const homePath = '/';
const authPath = '/auth';

// Create a GoRouter instance
final GoRouter router = GoRouter(
  initialLocation: homePath, // Optional: Specify the initial screen
  routes: <GoRoute>[
    GoRoute(
      path: homePath,
      builder: (BuildContext context, GoRouterState state) => const HomeScreen(),
    ),
    GoRoute(
      path: authPath,
      builder: (BuildContext context, GoRouterState state) => const AuthScreen(),
    ),
  ],
);