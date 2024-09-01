import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class recommedndeditem extends StatelessWidget {
  final String imageUrl;
  final String duration;
  final String title;
  final String deal;

  recommedndeditem(
      {required this.imageUrl,
      required this.duration,
      required this.title,
      required this.deal});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 80,
            width: 160,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(imageUrl),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(16)),
                ),
                Positioned(
                    bottom: 8,
                    right: 8,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0XFF3A544F),
                          borderRadius: BorderRadius.circular(9)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 2, horizontal: 4),
                        child: Text(
                          duration,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color(0xFF232323)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8OQp7npX_qlFcgq0ygYeE86ICem-fWgX8JQ&s',
                      height: 24, // Adjust the height as needed
                      width: 24, // Adjust the width as needed
                    ),
                    SizedBox(width: 6), // Spacing between text and icon

                    Text(
                      deal,
                      style: TextStyle(
                        color: Color(0xffa3a544f),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
