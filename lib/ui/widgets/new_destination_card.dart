import '../../shared/theme.dart';
import 'package:flutter/material.dart';

import '../pages/detail_page.dart';

class NewDestinationCard extends StatelessWidget {
  final String name;
  final String original;
  final String imageUrl;
  final String score;

  const NewDestinationCard({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.original,
    required this.score,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailPage()));
      },
      child: Container(
        width: 327,
        height: 90,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(
          bottom: 16,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultRadius),
                image: DecorationImage(
                  image: AssetImage(
                    imageUrl,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      name,
                      style: blackTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: medium,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      original,
                      style: greyTextStyle.copyWith(
                        fontWeight: light,
                      ),
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: 54.5,
              height: 30,
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(defaultRadius),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    margin: EdgeInsets.only(right: 2),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/icon_star.png'),
                    )),
                  ),
                  Text(
                    score,
                    style: blackTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
