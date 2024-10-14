import 'package:get/get_navigation/src/routes/get_route.dart';
import '../pages/home_page.dart';

class RouteManager {
  static const String homePage = '/';

  static List<GetPage> routes = [
    GetPage(name: homePage, page: () => HomePage()),
  ];
}