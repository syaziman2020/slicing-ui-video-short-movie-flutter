import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final TextStyle style;
  final Color color;
  final double padding;
  const CustomButton({
    Key? key,
    required this.title,
    required this.style,
    required this.color,
    this.padding = 41,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
      ),
      child: Center(
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(color),
            padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(horizontal: padding),
            ),
          ),
          onPressed: () {},
          child: Text(
            title,
            style: style,
          ),
        ),
      ),
    );
  }
}
