import 'package:flutter/material.dart';
import 'package:travel_app/screens/widgets/Recommended_item.dart';

class recommendedList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            recommedndeditem(
                deal: "Hot deal",
                title: "Explore Aspen",
                imageUrl:
                    'https://cdn.britannica.com/96/115096-050-5AFDAF5D/Bellagio-Hotel-Casino-Las-Vegas.jpg',
                duration: "4N/5D"),
            recommedndeditem(
                deal: "Hot deal",
                title: "Explore Aspen",
                imageUrl:
                    'https://cdn.britannica.com/96/115096-050-5AFDAF5D/Bellagio-Hotel-Casino-Las-Vegas.jpg',
                duration: "4N/5D"),
            recommedndeditem(
                deal: "Hot deal",
                title: "Explore Aspen",
                imageUrl:
                    'https://cdn.britannica.com/96/115096-050-5AFDAF5D/Bellagio-Hotel-Casino-Las-Vegas.jpg',
                duration: "4N/5D"),
          ],
        ),
      ),
    );
  }
}
