import 'package:demo_app/shared/theme.dart';
import 'package:demo_app/ui/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SuccessCheckout extends StatelessWidget {
  const SuccessCheckout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 299.96,
              height: 150,
              margin: EdgeInsets.only(bottom: 80),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icon_success.png'),
                  fit: BoxFit.cover,
                )
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 50),
              child: Column(
                children: [
                  Text('Well Booked 😍', style: blackTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 32
                  ),),
                  SizedBox(height: 10,),
                  Text('Are you ready to explore the new\nworld of experiences?', style: greyTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: light,
                    height: 2,
                  ),
                  textAlign: TextAlign.center,),
                ],
              ),
            ),
            CustomButton(onPressed: (){}, text: 'My Bookings', width: 220,),
          ],
        ),
      ),
    );
  }
}
