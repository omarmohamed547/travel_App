import 'package:flutter/material.dart';
import 'package:travel_app/screens/widgets/popular_item.dart';

class popularlist extends StatelessWidget {
  const popularlist({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            popularitem(
                imageUrl:
                    'https://cdn.britannica.com/96/115096-050-5AFDAF5D/Bellagio-Hotel-Casino-Las-Vegas.jpg',
                title: "popular",
                rating: 4.8),
            popularitem(
                imageUrl:
                    'https://cdn.britannica.com/96/115096-050-5AFDAF5D/Bellagio-Hotel-Casino-Las-Vegas.jpg',
                title: "popular",
                rating: 4.8),
            popularitem(
                imageUrl:
                    'https://cdn.britannica.com/96/115096-050-5AFDAF5D/Bellagio-Hotel-Casino-Las-Vegas.jpg',
                title: "popular",
                rating: 4.8),
            popularitem(
                imageUrl:
                    'https://cdn.britannica.com/96/115096-050-5AFDAF5D/Bellagio-Hotel-Casino-Las-Vegas.jpg',
                title: "popular",
                rating: 4.8),
          ],
        ),
      ),
    );
  }
}
