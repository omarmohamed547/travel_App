import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_app/screens/onboarding_screen.dart';
import 'package:travel_app/screens/splash_screen.dart';

class appRouter {
  static const kboardingscreen = '/boardingscreen';
  static final GoRouter router = GoRouter(routes: <RouteBase>[
    GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return SplashScreen();
        }),
    GoRoute(
        path: kboardingscreen,
        builder: (BuildContext context, GoRouterState state) {
          return OnboardingScreen();
        })
  ]);
}
