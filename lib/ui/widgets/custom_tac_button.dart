import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class CustomTacButton extends StatelessWidget {
  const CustomTacButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
          child: Text(
            'Term and Conditions',
            style: greyTextStyle.copyWith(
              fontSize: 16,
              fontWeight: light,
            ),
          ),
        )
    );
  }
}
