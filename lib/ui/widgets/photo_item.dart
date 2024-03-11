import '../../shared/theme.dart';
import 'package:flutter/material.dart';

class PhotoItem extends StatelessWidget {
  final String imageUrl;
  const PhotoItem({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(defaultRadius),
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
        )
      ),
    );
  }
}
