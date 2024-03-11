import 'package:demo_app/ui/widgets/custom_button.dart';

import '../../shared/theme.dart';
import 'package:flutter/material.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget bonusCard() {
      return Container(
        width: 300,
        height: 200,
        padding: EdgeInsets.all(defaultMargin),
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/icon_card.png')),
            boxShadow: [
              BoxShadow(
                color: kPrimaryColor.withOpacity(0.5),
                blurRadius: 50,
                offset: Offset(0, 10),
              )
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style: whiteTextStyle.copyWith(
                          fontWeight: light,
                        ),
                      ),
                      Text(
                        'Kezia Anne',
                        style: whiteTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: medium,
                        ),
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 23,
                      height: 23,
                      margin: EdgeInsets.only(right: 5),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/icon_plane.png'))),
                    ),
                    Text(
                      'Pay',
                      style: whiteTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: medium,
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 41,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Balance',
                  style: whiteTextStyle.copyWith(
                    fontWeight: light,
                  ),
                ),
                Text(
                  'IDR 280.000.000',
                  style: whiteTextStyle.copyWith(
                    fontSize: 26,
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget title() {
      return Text(
        'Big Bonus🎉',
        style: blackTextStyle.copyWith(
          fontSize: 32,
          fontWeight: semiBold,
        ),
        textAlign: TextAlign.center,
      );
    }

    Widget subTitle() {
      return Text(
        'We give you early credit so that\nyou can buy a flight ticket',
        style: greyTextStyle.copyWith(
          fontSize: 16,
          fontWeight: light,
        ),
        textAlign: TextAlign.center,
      );
    }

    Widget startButton() {
      return CustomButton(
        onPressed: () {
          Navigator.pushNamed(context, '/main');
        },
        text: 'Start FLy Now',
        width: 220,
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            bonusCard(),
            SizedBox(
              height: 80,
            ),
            title(),
            SizedBox(
              height: 10,
            ),
            subTitle(),
            SizedBox(
              height: 50,
            ),
            startButton(),
          ],
        ),
      ),
    );
  }
}
