import 'package:flutter/material.dart';
import 'package:ui_video_short_design/shared/theme.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:ui_video_short_design/ui/widgets/item_contain.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  bool status = false;
  bool eventClick = false;

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: 30,
          right: 30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Notification',
              style: whiteTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            Text(
              'Clear all',
              style: whiteTextStyle.copyWith(
                fontSize: 12,
              ),
            )
          ],
        ),
      );
    }

    Widget switchNotification() {
      return Container(
        padding: EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 16,
        ),
        width: double.infinity,
        height: 74,
        margin: EdgeInsets.only(
          top: 20,
        ),
        decoration: BoxDecoration(
          color: primaryColor,
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 12),
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/notif.png'),
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Notification',
                    style: whiteTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    (status) ? 'ON' : 'OFF',
                    style: indigoTextStyle.copyWith(
                      fontWeight: light,
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
            FlutterSwitch(
              showOnOff: true,
              inactiveToggleColor: blueColor,
              width: 70,
              height: 30,
              activeText: 'ON',
              inactiveText: 'OFF',
              inactiveColor: greyColor,
              activeColor: greenColor,
              value: status,
              onToggle: (newValue) {
                setState(() {
                  status = newValue;
                });
              },
            ),
          ],
        ),
      );
    }

    Widget congratsItem() {
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
                  image: AssetImage('assets/system.png'),
                ),
              ),
            ),
            Text(
              'Congratulations 🎉 🎉 \nYou Have 150.000 Follower',
              style: indigoTextStyle.copyWith(
                fontSize: 12,
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              size: 20,
              color: whiteColor,
            ),
          ],
        ),
      );
    }

    Widget itemContain() {
      return Column(
        children: [
          ItemContain(
            name: 'Ghearz Mira',
            imageUrl: 'assets/people4.png',
            comment: '\“Mira start following you\”',
          ),
          ItemContain(
            name: 'Connie Damn',
            imageUrl: 'assets/people5.png',
            comment: '\“Connie Like your Video\”',
          ),
          ItemContain(
            name: 'John Weak',
            imageUrl: 'assets/people1.png',
            comment: '\“John Comment your Video\”',
          ),
          ItemContain(
            name: 'Eren Yeager',
            imageUrl: 'assets/people2.png',
            comment: '\“Eren Share your video\”',
          ),
          ItemContain(
            name: 'Mike Kawalski',
            imageUrl: 'assets/people3.png',
            comment: '\“Mike Like your Video\”',
          ),
          congratsItem(),
        ],
      );
    }

    return Scaffold(
      backgroundColor: boxColor,
      body: ListView(
        children: [
          header(),
          switchNotification(),
          itemContain(),
        ],
      ),
    );
  }
}
