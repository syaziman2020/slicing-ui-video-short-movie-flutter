import 'package:flutter/material.dart';
import 'package:ui_video_short_design/shared/theme.dart';

class PhotoItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String plays;
  const PhotoItem({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.plays,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 21,
      ),
      width: double.infinity,
      height: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(imageUrl),
        ),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              width: 90,
              height: 30,
              decoration: BoxDecoration(
                color: primaryColor.withOpacity(0.6),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                ),
              ),
              child: Center(
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 8),
                      width: 27,
                      height: 27,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/play.png'),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      plays,
                      style: whiteTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 16,
              left: 16,
            ),
            child: Text(
              name,
              style: whiteTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
          )
        ],
      ),
    );
  }
}
