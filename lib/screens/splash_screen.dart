import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
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
