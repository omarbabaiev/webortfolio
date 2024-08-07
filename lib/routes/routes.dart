import 'package:get/get_navigation/src/routes/get_route.dart';

import '../pages/home_page.dart';
import '../pages/splash_page.dart';

class RouteManager {
  static const String splash = '/';
  static const String homePage = '/homepage';

  static List<GetPage> routes = [
    GetPage(name: homePage, page: () => HomePage()),
    GetPage(name: splash, page: () => SplashPage()),
  ];
}