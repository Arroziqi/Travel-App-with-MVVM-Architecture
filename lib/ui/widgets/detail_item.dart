import 'package:demo_app/shared/theme.dart';
import 'package:demo_app/ui/widgets/checklist_item.dart';
import 'package:flutter/cupertino.dart';

class DetailItem extends StatelessWidget {
  final EdgeInsets margin;
  final String label;
  final String value;
  final TextStyle textStyle;
  const DetailItem({super.key, required this.margin, required this.label, required this.value, required this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ChecklistItem(label: label),
          Text(value, style: textStyle.copyWith(fontWeight: semiBold),),
        ],
      ),
    );
  }
}
