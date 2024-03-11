import 'package:demo_app/shared/theme.dart';
import 'package:flutter/cupertino.dart';

class SeatSelectionItem extends StatelessWidget {

  final String status;

  const SeatSelectionItem({super.key, required this.status});

  @override
  Widget build(BuildContext context) {

    color(){
      switch(status){
        case 'unavailable':
          return kLightGreyColor;
        case 'selected':
          return kPrimaryColor;
        default:
          return kSecondaryColor;
      }
    }

    borderColor(){
      switch(status){
        case 'unavailable':
          return kLightGreyColor;
        case 'selected':
          return kPrimaryColor;
        default:
          return kPrimaryColor;
      }
    }
    
    Widget text(){
      if(status == 'selected'){
        return Text('YOU', style: whiteTextStyle.copyWith(
          fontWeight: semiBold,
        ),);
      }else{
        return const Text('');
      }
    }

    return Container(
      width: 48,
      height: 48,
      margin: const EdgeInsets.only(top: 16),
      decoration: BoxDecoration(
        color: color(),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: borderColor(),
          width: 2,
        )
      ),
     child: Center(
       child: text(),
     ),
    );
  }
}
