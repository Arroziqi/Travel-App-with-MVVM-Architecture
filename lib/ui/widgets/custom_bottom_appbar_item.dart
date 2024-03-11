import '../../shared/theme.dart';
import 'package:flutter/material.dart';

class CustomBottomAppbarItem extends StatelessWidget {
  final String imageUrl;
  final bool isActive;

  const CustomBottomAppbarItem({super.key, required this.imageUrl, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(),
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imageUrl),
            ),
          ),
        ),
        Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
            color: isActive ? kPrimaryColor : kTransparent,
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
        )
      ],
    );
  }
}
