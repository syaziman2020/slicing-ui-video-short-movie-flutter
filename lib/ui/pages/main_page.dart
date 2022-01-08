import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_video_short_design/cubit/set_page_cubit.dart';
import 'package:ui_video_short_design/shared/theme.dart';
import 'package:ui_video_short_design/ui/pages/home_page.dart';
import 'package:ui_video_short_design/ui/pages/page_first.dart';
import 'package:ui_video_short_design/ui/pages/search.dart';
import 'package:ui_video_short_design/ui/widgets/custom_item_navbar.dart';
import 'package:ui_video_short_design/ui/pages/notification.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget bottomNavbar() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 69,
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(23),
              topRight: Radius.circular(23),
            ),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ItemNavbar(
                  imageUrl: 'assets/home.png',
                  index: 0,
                ),
                ItemNavbar(
                  imageUrl: 'assets/search.png',
                  index: 1,
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: greenColor,
                  ),
                  child: Center(
                    child: Container(
                      width: 15,
                      height: 15,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/plus.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                ItemNavbar(
                  imageUrl: 'assets/notification.png',
                  index: 2,
                ),
                ItemNavbar(
                  imageUrl: 'assets/profile_icon.png',
                  index: 3,
                ),
              ],
            ),
          ),
        ),
      );
    }

    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return PageFirst();
        case 1:
          return Search();
        case 2:
          return NotificationPage();
        case 3:
          return HomePage();
        default:
          return HomePage();
      }
    }

    return BlocBuilder<SetPageCubit, int>(
      builder: (context, newIndex) {
        return Scaffold(
          backgroundColor: primaryColor,
          body: Stack(
            children: [
              buildContent(newIndex),
              bottomNavbar(),
            ],
          ),
        );
      },
    );
  }
}
