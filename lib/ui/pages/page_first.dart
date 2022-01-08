import 'package:flutter/material.dart';
import 'package:ui_video_short_design/shared/theme.dart';

class PageFirst extends StatelessWidget {
  const PageFirst({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Home',
        style: whiteTextStyle,
      ),
    );
  }
}
