import '../../shared/theme.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final double width;
  final Function() onPressed;
  final String text;
  final EdgeInsets? margin;

  const CustomButton(
      {super.key,
      this.width = double.infinity,
      required this.onPressed,
      required this.text,
      this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 55,
      margin: margin,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            backgroundColor: kPrimaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(defaultRadius))),
        child: Text(
          text,
          style: whiteTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
      ),
    );
  }
}
