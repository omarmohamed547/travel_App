import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_app/screens/homeScreen.dart';
import 'package:travel_app/screens/loginScreen.dart';
import 'package:travel_app/screens/register_screen.dart';
import 'package:travel_app/screens/splash_screen.dart';

class appRouter {
  static const klogin = '/loginscreen';
  static const khome = '/homescreen';
  static const kregister = '/registerscreen';

  static final GoRouter router = GoRouter(routes: <RouteBase>[
    GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return SplashScreen();
        }),
    GoRoute(
        path: klogin,
        builder: (BuildContext context, GoRouterState state) {
          return LoginScreen();
        }),
    GoRoute(
        path: khome,
        builder: (BuildContext context, GoRouterState state) {
          return homescreen();
        }),
    GoRoute(
        path: kregister,
        builder: (BuildContext context, GoRouterState state) {
          return RegisterScreen();
        })
  ]);
}
