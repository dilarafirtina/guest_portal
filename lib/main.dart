import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/pages/splash/splash_screen.dart';
import 'package:shop_app/routes/app_routes.dart';
import 'package:shop_app/routes/routes.dart';
import 'package:shop_app/theme.dart';

import 'pages/messages/not_found_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      // home: SplashScreen(),
      // We use routeName so that we dont need to remember the name
      initialRoute: AppRoutes.splashScreen,
      unknownRoute: GetPage(
          name: AppRoutes.notFoundPage, page: () => const NotFoundView()),
      getPages: Routes.routes,
    );
  }
}
