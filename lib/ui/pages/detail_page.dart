import 'package:demo_app/ui/pages/seat_page.dart';
import 'package:demo_app/ui/widgets/checklist_item.dart';
import 'package:demo_app/ui/widgets/custom_button.dart';
import 'package:demo_app/ui/widgets/photo_item.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        width: double.infinity,
        height: 450,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img_ciliwung.png'),
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    Widget shadow() {
      return Container(
        width: double.infinity,
        height: 214,
        margin: const EdgeInsets.only(top: 236),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black.withOpacity(0),
              Colors.black.withOpacity(0.95),
            ],
          ),
        ),
      );
    }

    Widget buildContent() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 108,
                height: 24,
                margin: const EdgeInsets.only(top: 30),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/icon_emblem.png'))),
              ),
              const SizedBox(
                height: 256,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lake Ciliwung',
                          style: whiteTextStyle.copyWith(
                            fontWeight: semiBold,
                            fontSize: 24,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Text(
                          'Tangerang',
                          style: whiteTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: light,
                            overflow: TextOverflow.ellipsis,
                          ),
                        )
                      ],
                    ),
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
                        style: whiteTextStyle.copyWith(
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.symmetric(vertical: 30),
                decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.circular(defaultRadius),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About',
                      style: blackTextStyle.copyWith(
                          fontWeight: semiBold, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Berada di jalur jalan provinsi yang menghubungkan Denpasar Singaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.',
                      style: blackTextStyle.copyWith(
                        height: 2,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Photos',
                      style: blackTextStyle.copyWith(
                          fontWeight: semiBold, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    const Row(
                      children: [
                        PhotoItem(imageUrl: 'assets/img_photo1.png'),
                        PhotoItem(imageUrl: 'assets/img_photo2.png'),
                        PhotoItem(imageUrl: 'assets/img_photo3.png'),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Interests',
                      style: blackTextStyle.copyWith(
                          fontWeight: semiBold, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: ChecklistItem(label: 'Kids Park'),
                            ),
                            Expanded(
                              child: ChecklistItem(label: 'Honor Bridge'),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: ChecklistItem(label: 'City Museum'),
                            ),
                            Expanded(
                              child: ChecklistItem(label: 'Central Mall'),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 30),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'IDR 2.500.000',
                            style: blackTextStyle.copyWith(
                              fontSize: 18,
                              fontWeight: medium,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'per orang',
                            style: greyTextStyle.copyWith(
                              fontWeight: light,
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: CustomButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const SeatPage(),),);
                          },
                          text: 'Book Now'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          backgroundImage(),
          shadow(),
          buildContent(),
        ],
      ),
    );
  }
}
