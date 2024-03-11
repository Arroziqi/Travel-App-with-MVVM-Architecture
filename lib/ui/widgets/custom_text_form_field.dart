import '../../shared/theme.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  final bool obsecureText;

  const CustomTextFormField({super.key, required this.label, this.obsecureText = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: blackTextStyle.copyWith(
              fontSize: 14,
              fontWeight: regular,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          TextFormField(
            obscureText: obsecureText,
            cursorColor: kBlackColor,
            decoration: InputDecoration(
              hintText: '',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                  borderSide: BorderSide(
                    color: kThirdColor,
                  )
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: kPrimaryColor,
                ),
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
            ),
          )
        ],
      ),
    );
  }
}
