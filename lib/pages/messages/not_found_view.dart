import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../constants.dart';

const double defaultPadding = 16;

class NotFoundView extends StatelessWidget {
  const NotFoundView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F9FA),
      floatingActionButton: SizedBox(
        height: 64,
        width: 64,
        child: ElevatedButton(
          onPressed: () => Get.back(),
          style: ElevatedButton.styleFrom(
              shape: const CircleBorder(), backgroundColor: kPrimaryColor),
          child: SvgPicture.asset(
            "assets/icons/arrow_back.svg",
            color: Colors.grey.shade50,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              "assets/lottie/not_found.json",
              repeat: true,
              animate: true,
            ),
            const SizedBox(height: defaultPadding),
            Text(
              "Looks like you are lost!",
              style: Theme.of(context).textTheme.headline6,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: defaultPadding * 2, vertical: defaultPadding),
              child: Text(
                "This page doesn't exist.  Go back to previous page.",
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
