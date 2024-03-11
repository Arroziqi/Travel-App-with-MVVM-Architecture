import 'package:demo_app/shared/theme.dart';
import 'package:demo_app/ui/pages/success_checkout.dart';
import 'package:demo_app/ui/widgets/custom_button.dart';
import 'package:demo_app/ui/widgets/custom_tac_button.dart';
import 'package:demo_app/ui/widgets/detail_item.dart';
import 'package:demo_app/ui/widgets/new_destination_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget route() {
      return Container(
        width: 327,
        height: 132,
        child: Column(
          children: [
            Container(
              width: 291,
              height: 65,
              margin: const EdgeInsets.only(bottom: 10),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/img_checkout.png'),
                fit: BoxFit.cover,
              )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CGK',
                      style: blackTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      'Tangerang',
                      style: greyTextStyle.copyWith(
                        fontWeight: light,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'TLC',
                      style: blackTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      'Ciliwung',
                      style: greyTextStyle.copyWith(
                        fontWeight: light,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget bookingDetails() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  margin: const EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    image: const DecorationImage(
                      image: AssetImage('assets/img_destination1.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lake Ciliwungssssssssasd',
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: medium,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Tangerang',
                        style: greyTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: light,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      margin: const EdgeInsets.only(right: 2),
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage('assets/icon_star.png'),
                      )),
                    ),
                    Text(
                      '4.8',
                      style: blackTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Booking Details',
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            DetailItem(
                margin: const EdgeInsets.only(top: 10),
                label: 'Traveler',
                value: '2 Person',
                textStyle: blackTextStyle),
            DetailItem(
                margin: const EdgeInsets.only(top: 16),
                label: 'Seat',
                value: 'A3, B3',
                textStyle: blackTextStyle),
            DetailItem(
                margin: const EdgeInsets.only(top: 16),
                label: 'Insurance',
                value: 'YES',
                textStyle: greenTextStyle),
            DetailItem(
                margin: const EdgeInsets.only(top: 16),
                label: 'Refundable',
                value: 'NO',
                textStyle: redTextStyle),
            DetailItem(
                margin: const EdgeInsets.only(top: 16),
                label: 'VAT',
                value: '45%',
                textStyle: blackTextStyle),
            DetailItem(
                margin: const EdgeInsets.only(top: 16),
                label: 'Price',
                value: 'IDR 8.500.690',
                textStyle: blackTextStyle),
            DetailItem(
                margin: const EdgeInsets.only(top: 16),
                label: 'Traveler',
                value: 'IDR 12.000.000',
                textStyle: primaryTextStyle),
          ],
        ),
      );
    }

    Widget paymentDetails() {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        margin: const EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Payment Details',
              style:
                  blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 100,
                  height: 70,
                  margin: const EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    image: const DecorationImage(
                      image: AssetImage('assets/icon_card.png'),
                      fit: BoxFit.cover,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: kPrimaryColor.withOpacity(0.5),
                        blurRadius: 50,
                        offset: const Offset(0, 5),
                      )
                    ],
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 24,
                          height: 24,
                          margin: const EdgeInsets.only(right: 6),
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage('assets/icon_plane.png'),
                          )),
                        ),
                        Text(
                          'Pay',
                          style: whiteTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: medium,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'IDR 80.400.000',
                      style: blackTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Current Balance',
                      style: greyTextStyle.copyWith(fontWeight: light),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: defaultMargin),
        children: [
          route(),
          bookingDetails(),
          paymentDetails(),
          CustomButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SuccessCheckout(),),);
            },
            text: 'Pay Now',
            margin: const EdgeInsets.symmetric(vertical: 30),
          ),
          const CustomTacButton(),
        ],
      ),
    );
  }
}
