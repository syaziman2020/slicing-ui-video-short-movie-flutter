import 'package:flutter/material.dart';
import 'package:ui_video_short_design/shared/theme.dart';

class ItemContain extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String comment;
  const ItemContain({
    Key? key,
    required this.name,
    required this.imageUrl,
    required this.comment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 20,
        left: 30,
        right: 30,
      ),
      padding: EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 20,
      ),
      width: double.infinity,
      height: 74,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(
              right: 12,
            ),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(imageUrl),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                name,
                style: whiteTextStyle.copyWith(
                  fontWeight: medium,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                comment,
                style: indigoTextStyle.copyWith(
                  fontWeight: light,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
