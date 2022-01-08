import 'package:flutter/material.dart';
import 'package:ui_video_short_design/shared/theme.dart';
import 'package:ui_video_short_design/ui/widgets/custom_button.dart';
import 'package:ui_video_short_design/ui/widgets/custom_photos.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget topItem() {
      return Padding(
        padding: const EdgeInsets.only(
          top: 30,
          left: 30,
          right: 30,
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 21,
              child: Center(
                child: Row(
                  children: [
                    Container(
                      width: 18,
                      height: 8,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/menu.png',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 88,
                    ),
                    Text(
                      'Bimo Semesta',
                      style: whiteTextStyle.copyWith(fontWeight: semibold),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 30,
                bottom: 12,
              ),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/profile.png'),
                ),
              ),
            ),
            Text(
              '@BimxTK',
              style: whiteTextStyle.copyWith(fontWeight: medium),
            ),
            Container(
              margin: EdgeInsets.only(top: 24, left: 55, right: 55),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        '1',
                        style: whiteTextStyle.copyWith(
                          fontWeight: semibold,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        'Following',
                        style: indigoTextStyle.copyWith(
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                  Container(
                    width: 1,
                    height: 40,
                    decoration: BoxDecoration(
                      color: indigoColor,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        '150.2K',
                        style: whiteTextStyle.copyWith(
                          fontWeight: semibold,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        'Followers',
                        style: indigoTextStyle.copyWith(
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                  Container(
                    width: 1,
                    height: 40,
                    decoration: BoxDecoration(
                      color: indigoColor,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        '7.9M',
                        style: whiteTextStyle.copyWith(
                          fontWeight: semibold,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        'Like',
                        style: indigoTextStyle.copyWith(
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 24,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                    title: 'Insight',
                    style: greenTextStyle.copyWith(fontWeight: medium),
                    color: greenColor,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  CustomButton(
                    title: 'Edit Profile',
                    style: whiteTextStyle.copyWith(fontWeight: medium),
                    color: boxColor,
                    padding: 29,
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget bottomItem() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        width: double.infinity,
        padding: EdgeInsets.only(
          left: 30,
          right: 30,
          top: 21,
          bottom: 100,
        ),
        decoration: BoxDecoration(
          color: boxColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(23),
            topRight: Radius.circular(23),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Most Watched Videos',
              style: whiteTextStyle.copyWith(
                fontWeight: semibold,
              ),
            ),
            PhotoItem(
              name: 'The Mountweather',
              plays: '5.6M',
              imageUrl: 'assets/video1.png',
            ),
            PhotoItem(
              name: 'The Bridge',
              plays: '7.6M',
              imageUrl: 'assets/video2.png',
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        topItem(),
        bottomItem(),
      ],
    );
  }
}
