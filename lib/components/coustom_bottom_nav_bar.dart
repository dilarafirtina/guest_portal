import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:shop_app/pages/home/home_view.dart';
import '../constants.dart';
import '../enums.dart';
import '../pages/notifications/notification_view.dart';
import '../pages/reservation/reservation_view.dart';
import '../pages/services/services_view.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/home.svg",
                  color: MenuState.home == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                ),
                onPressed: () => Get.to(() => HomeView()),
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/services.svg",
                  color: MenuState.services == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                ),
                onPressed: () => Get.to(() => ServiceView()),
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/reservation.svg",
                  color: MenuState.reservations == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                ),
                onPressed: () => Get.to(() => ReservationView()),
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/bell.svg",
                  color: MenuState.notifications == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                ),
                onPressed: () => Get.to(() => const NotificationView()),
              ),
            ],
          )),
    );
  }
}
