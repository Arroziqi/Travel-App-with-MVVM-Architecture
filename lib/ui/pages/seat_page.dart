import 'package:demo_app/shared/theme.dart';
import 'package:demo_app/ui/pages/checkout_page.dart';
import 'package:demo_app/ui/widgets/custom_button.dart';
import 'package:demo_app/ui/widgets/seat_selection_item.dart';
import 'package:demo_app/ui/widgets/seat_status_item.dart';
import 'package:flutter/material.dart';

class SeatPage extends StatelessWidget {
  const SeatPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(bottom: 30),
        child: Text(
          'Select Your\nFavorite Seat',
          style: blackTextStyle.copyWith(
            fontWeight: semiBold,
            fontSize: 24,
          ),
          textAlign: TextAlign.start,
        ),
      );
    }

    Widget seatStatus() {
      return const Row(
        children: [
          SeatStatusItem(
              label: 'Available', imageUrl: 'assets/icon_available.png'),
          SeatStatusItem(
              label: 'Selected', imageUrl: 'assets/icon_selected.png'),
          SeatStatusItem(
              label: 'Unavailable', imageUrl: 'assets/icon_unavailable.png'),
        ],
      );
    }

    Widget seatLabel(String label) {
      return Container(
        width: 48,
        height: 48,
        margin: const EdgeInsets.only(top: 16),
        child: Center(
          child: Text(
            label,
            style: greyTextStyle.copyWith(fontSize: 16),
            textAlign: TextAlign.center,
          ),
        )
      );
    }

    Widget seatSelection() {
      return Container(
        margin: const EdgeInsets.symmetric(vertical: 30),
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                seatLabel('A'),
                seatLabel('B'),
                seatLabel(''),
                seatLabel('C'),
                seatLabel('D'),
              ],
            ),
            Container(
              height: 325,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SeatSelectionItem(status: 'unavailable'),
                        const SeatSelectionItem(status: 'unavailable'),
                        seatLabel('1'),
                        const SeatSelectionItem(status: 'available'),
                        const SeatSelectionItem(status: 'unavailable'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SeatSelectionItem(status: 'available'),
                        const SeatSelectionItem(status: 'available'),
                        seatLabel('2'),
                        const SeatSelectionItem(status: 'available'),
                        const SeatSelectionItem(status: 'unavailable'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SeatSelectionItem(status: 'selected'),
                        const SeatSelectionItem(status: 'selected'),
                        seatLabel('3'),
                        const SeatSelectionItem(status: 'available'),
                        const SeatSelectionItem(status: 'available'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SeatSelectionItem(status: 'available'),
                        const SeatSelectionItem(status: 'unavailable'),
                        seatLabel('4'),
                        const SeatSelectionItem(status: 'available'),
                        const SeatSelectionItem(status: 'available'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SeatSelectionItem(status: 'available'),
                        const SeatSelectionItem(status: 'available'),
                        seatLabel('5'),
                        const SeatSelectionItem(status: 'unavailable'),
                        const SeatSelectionItem(status: 'available'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SeatSelectionItem(status: 'available'),
                        const SeatSelectionItem(status: 'available'),
                        seatLabel('5'),
                        const SeatSelectionItem(status: 'unavailable'),
                        const SeatSelectionItem(status: 'available'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SeatSelectionItem(status: 'available'),
                        const SeatSelectionItem(status: 'available'),
                        seatLabel('5'),
                        const SeatSelectionItem(status: 'unavailable'),
                        const SeatSelectionItem(status: 'available'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SeatSelectionItem(status: 'available'),
                        const SeatSelectionItem(status: 'available'),
                        seatLabel('5'),
                        const SeatSelectionItem(status: 'unavailable'),
                        const SeatSelectionItem(status: 'available'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SeatSelectionItem(status: 'available'),
                        const SeatSelectionItem(status: 'available'),
                        seatLabel('5'),
                        const SeatSelectionItem(status: 'unavailable'),
                        const SeatSelectionItem(status: 'available'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Your Seat',
                    style: greyTextStyle.copyWith(fontWeight: light),
                  ),
                ),
                Text(
                  'A3, B3',
                  style:
                      blackTextStyle.copyWith(fontWeight: medium, fontSize: 16),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Total',
                    style: greyTextStyle.copyWith(fontWeight: light),
                  ),
                ),
                Text(
                  'IDR 540.000.000',
                  style: primaryTextStyle.copyWith(
                      fontWeight: semiBold, fontSize: 16),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(left: defaultMargin, right: defaultMargin, top: 10, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                title(),
                seatStatus(),
                seatSelection(),
                CustomButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const CheckoutPage()));
                }, text: 'Continue to Checkout', margin: const EdgeInsets.only(bottom: 20),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
