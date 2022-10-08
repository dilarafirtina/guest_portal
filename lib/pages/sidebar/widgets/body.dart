import 'package:flutter/material.dart';

import 'sidebar_menu.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfileMenu(
            text: "Change Hotel",
            icon: "assets/icons/reception.svg",
            press: () => {},
          ),
          ProfileMenu(
            text: "Languages",
            icon: "assets/icons/bell.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Contact Us",
            icon: "assets/icons/settings.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Hotel Map",
            icon: "assets/icons/navigation.svg",
            press: () {},
          )
        ],
      ),
    );
  }
}
