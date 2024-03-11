import 'package:demo_app/ui/pages/home_page.dart';
import 'package:demo_app/ui/widgets/custom_bottom_appbar_item.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {

    Widget customBottomAppbar(){
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(left: defaultMargin, bottom: 20, right: defaultMargin),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(defaultRadius),
            color: kWhiteColor,
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:[
              CustomBottomAppbarItem(imageUrl: 'assets/icon_home.png', isActive: true,),
              CustomBottomAppbarItem(imageUrl: 'assets/icon_booking.png',),
              CustomBottomAppbarItem(imageUrl: 'assets/icon_card2.png',),
              CustomBottomAppbarItem(imageUrl: 'assets/icon_setting.png',),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          const HomePage(),
          customBottomAppbar(),
        ],
      ),
    );
  }
}
