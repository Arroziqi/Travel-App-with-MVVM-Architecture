import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class SeatStatusItem extends StatelessWidget {
  final String label;
  final String imageUrl;
  const SeatStatusItem({super.key, required this.label, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 16,
            height: 16,
            margin: EdgeInsets.only(right: 6),
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                  fit: BoxFit.cover,
                )),
          ),
          Text(
            label,
            style: blackTextStyle,
          ),
        ],
      ),
    );
  }
}
