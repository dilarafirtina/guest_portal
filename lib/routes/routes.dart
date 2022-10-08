import 'package:get/get.dart';
import 'package:shop_app/pages/splash/splash_screen.dart';
import '../pages/details/details_view.dart';
import '../pages/notifications/notification_view.dart';
import '../pages/reservation/reservation_view.dart';
import 'app_routes.dart';
import '../pages/home/home_view.dart';
import '../pages/services/services_view.dart';
import '../pages/sidebar/sidebar_view.dart';
import '../pages/messages/not_found_view.dart';

class Routes {
  static final routes = [
    GetPage(
      name: AppRoutes.detailPage,
      page: () => DetailsView(),
    ),
    GetPage(
      name: AppRoutes.homePage,
      page: () => HomeView(),
    ),
    GetPage(
      name: AppRoutes.servicesPage,
      page: () => ServiceView(),
    ),
    GetPage(
      name: AppRoutes.sidebarPage,
      page: () => SideBarView(),
    ),
    GetPage(
      name: AppRoutes.notFoundPage,
      page: () => NotFoundView(),
    ),
    GetPage(
      name: AppRoutes.notificationsPage,
      page: () => NotificationView(),
    ),
    GetPage(
      name: AppRoutes.reservationPage,
      page: () => ReservationView(),
    ),
    GetPage(
      name: AppRoutes.splashScreen,
      page: () => SplashScreen(),
    ),
  ];
}
