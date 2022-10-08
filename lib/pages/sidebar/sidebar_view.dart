import 'package:flutter/material.dart';
import 'widgets/body.dart';

class SideBarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sidebar"),
      ),
      body: Body(),
    );
  }
}
