import 'package:flutter/material.dart';

class recommedndeditem extends StatelessWidget {
  final String imageUrl;
  final String duration;

  recommedndeditem({
    required this.imageUrl,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  padding:
                      const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
                  child: Text(
                    duration,
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
