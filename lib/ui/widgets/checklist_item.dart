import 'package:demo_app/shared/theme.dart';
import 'package:flutter/cupertino.dart';

class ChecklistItem extends StatelessWidget {

  final String label;
  const ChecklistItem({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 16,
          height: 16,
          margin: const EdgeInsets.only(right: 6),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/icon_checklist.png'),
              fit: BoxFit.cover,
            )
          ),
        ),
        Text(label, style: blackTextStyle.copyWith(
          overflow: TextOverflow.ellipsis,
        ),),
      ],
    );
  }
}
