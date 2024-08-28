import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travel_app/core/utils/app_router.dart';
import 'package:travel_app/screens/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
