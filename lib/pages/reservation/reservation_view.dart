import 'package:flutter/material.dart';
import '../../components/coustom_bottom_nav_bar.dart';
import '../../enums.dart';
import 'widgets/body.dart';

class ReservationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reservation"),
      ),
      body: Body(),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.reservations),
    );
  }
}
