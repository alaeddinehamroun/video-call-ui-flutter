import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/rounded_button.dart';

class VideoCallScreen extends StatelessWidget {
  static const routName = '/video-call';
  const VideoCallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Row(
        children: [
          Expanded(
              child: Container(
                  decoration: BoxDecoration(color: kSecondaryColor))),
          Expanded(
              child: Container(decoration: BoxDecoration(color: kBackgoundColor)))
        ],
      ),
      bottomNavigationBar: buildBottomNavBar(context),
    );
  }
}

Container buildBottomNavBar(BuildContext context) {
  return Container(
    color: kBackgoundColor,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        RoundedButton(
          color: kRedColor,
          iconColor: Colors.white,
          size: 35,
          iconSrc: "assets/icons/Icon Mic.svg",
          press: () {},
        ),
        RoundedButton(
          color: Color(0xFF2C384D),
          iconColor: Colors.white,
          size: 35,
          iconSrc: "assets/icons/call_end.svg",
          press: () {
            Navigator.of(context).pushNamed('/');
          },
        ),
        RoundedButton(
          color: Color(0xFF2C384D),
          iconColor: Colors.white,
          size: 35,
          iconSrc: "assets/icons/Icon Volume.svg",
          press: () {},
        ),
      ],
    ),
  );
}
