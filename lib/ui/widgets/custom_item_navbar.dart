import 'package:flutter/material.dart';
import 'package:ui_video_short_design/cubit/set_page_cubit.dart';
import 'package:ui_video_short_design/shared/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemNavbar extends StatelessWidget {
  final String imageUrl;
  final int index;

  const ItemNavbar({
    Key? key,
    required this.imageUrl,
    this.index = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<SetPageCubit>().setPage(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Container(
          //   width: 20,
          //   height: 20,
          //   decoration: BoxDecoration(
          //     image: DecorationImage(
          //       image: AssetImage(imageUrl),
          //     ),
          //   ),
          // ),
          Image.asset(imageUrl,
              width: 20,
              height: 20,
              color: context.read<SetPageCubit>().state == index
                  ? greenColor
                  : greyColor),
          Container(
            margin: EdgeInsets.only(
              top: 4,
            ),
            width: 4,
            height: 4,
            decoration: BoxDecoration(
              color: context.read<SetPageCubit>().state == index
                  ? greenColor
                  : Colors.transparent,
            ),
          )
        ],
      ),
    );
  }
}
