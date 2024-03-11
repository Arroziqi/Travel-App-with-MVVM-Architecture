import 'package:demo_app/shared/theme.dart';
import 'package:demo_app/ui/widgets/seat_status_item.dart';
import 'package:flutter/material.dart';

class SeatPage extends StatelessWidget {
  const SeatPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 50,bottom: 30),
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
      return Row(
        children: [
          SeatStatusItem(label: 'Available', imageUrl: 'assets/icon_available.png'),
          SeatStatusItem(label: 'Selected', imageUrl: 'assets/icon_selected.png'),
          SeatStatusItem(label: 'Unavailable', imageUrl: 'assets/icon_unavailable.png'),
        ],
      );
    }

    Widget seatLabel(String label, double margin){
      return Container(
        width: 48,
        margin: EdgeInsets.only(right: margin),
        child: Text(label, style: greyTextStyle.copyWith(fontSize: 16),),
      );
    }

    Widget seatSelection(){
      return Column(
        children: [
          Row(
            children: [
              seatLabel('A', 16),
              seatLabel('B', 16),
              seatLabel('', 6),
              seatLabel('C', 16),
              seatLabel('D', 16),
            ],
          ),
          Row(
            children: [

            ],
          )
        ],
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            title(),
            seatStatus(),
          ],
        ),
      ),
    );
  }
}
