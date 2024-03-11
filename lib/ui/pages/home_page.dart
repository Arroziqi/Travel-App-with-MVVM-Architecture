import 'package:demo_app/ui/widgets/destination_card.dart';

import '../../shared/theme.dart';
import 'package:flutter/material.dart';

import '../widgets/new_destination_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Text(
        'Howdy, \nKezia Anne',
        style: blackTextStyle.copyWith(
          fontSize: 24,
          fontWeight: semiBold,
        ),
      );
    }

    Widget subTitle() {
      return Container(
        margin: EdgeInsets.only(left: defaultMargin, right: 20),
        child: Text(
          'Where to fly today?',
          style: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
          ),
        ),
      );
    }

    Widget photoProfile() {
      return Container(
        width: 50,
        height: 50,
        decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('assets/img_profile.png'),
            )),
      );
    }

    Widget destinationCard() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              DestinationCard(
                name: 'Lake Ciliwung',
                original: 'Tangerang',
                imageUrl: 'assets/img_destination1.png',
                score: '4.8',
              ),
              DestinationCard(
                name: 'White Houses',
                original: 'Spain',
                imageUrl: 'assets/img_destination2.png',
                score: '4.7',
              ),
              DestinationCard(
                name: 'Hill Heyo',
                original: 'Monaco',
                imageUrl: 'assets/img_destination3.png',
                score: '4.8',
              ),
              DestinationCard(
                name: 'Menarra',
                original: 'Japan',
                imageUrl: 'assets/img_destination4.png',
                score: '5.0',
              ),
              DestinationCard(
                name: 'Payung Teduh',
                original: 'Singapore',
                imageUrl: 'assets/img_destination5.png',
                score: '4.8',
                rightMargin: 20,
              ),
            ],
          ),
        ),
      );
    }

    Widget sectionTitle() {
      return Container(
        margin: EdgeInsets.only(left: defaultMargin, top: 30, bottom: 16),
        child: Text(
          'New This Year',
          style: blackTextStyle.copyWith(
            fontSize: 18,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget newDestinationCard() {
      return Container(
        margin: const EdgeInsets.only(bottom: 100),
        child: const Column(
          children: [
            NewDestinationCard(
              name: 'Danau Beratan',
              original: 'Singajara',
              score: '4.5',
              imageUrl: 'assets/img_destination6.png',
            ),
            NewDestinationCard(
              name: 'Sydney Opera',
              original: 'Australia',
              score: '4.7',
              imageUrl: 'assets/img_destination7.png',
            ),
            NewDestinationCard(
              name: 'Roma',
              original: 'Italia',
              score: '4.5',
              imageUrl: 'assets/img_destination8.png',
            ),
            NewDestinationCard(
              name: 'Payung Teduh',
              original: 'Singapore',
              score: '4.5',
              imageUrl: 'assets/img_destination9.png',
            ),
            NewDestinationCard(
              name: 'Hill Hey',
              original: 'Monaco',
              score: '4.5',
              imageUrl: 'assets/img_destination10.png',
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        Container(
          margin: EdgeInsets.only(top: 20, left: defaultMargin, right: defaultMargin),
          child: Row(
            children: [
              Expanded(
                child: title(),
              ),
              photoProfile(),
            ],
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        subTitle(),
        destinationCard(),
        sectionTitle(),
        newDestinationCard(),
      ],
    );
  }
}
