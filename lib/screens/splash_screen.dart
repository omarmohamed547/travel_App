import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_app/core/utils/app_router.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      GoRouter.of(context).push(appRouter.kboardingscreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKU4005-zdf9Cuc6Z2vEIWhCNJcPwafr05kA&s'), // Add your image path here
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
