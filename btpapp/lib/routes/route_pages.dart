import 'package:btpapp/routes/route_names.dart';
import 'package:get/get.dart';

import '../view/menupages/about_screen.dart';
import '../view/menupages/dashboard.dart';
import '../view/menupages/homescreen.dart';
import '../view/menupages/learn_screen.dart';
import '../view/menupages/strategies_screen.dart';

class AppRoutes {
  static final List<GetPage> pages = [
    GetPage(name: RouteNames.homescreen, page: () => const HomeScreen()),
    GetPage(
      name: RouteNames.dashboard,
      page: () => MyDashBoard(),
    ),
    GetPage(name: RouteNames.startegypage, page: () => StrategyPage()),
    GetPage(name: RouteNames.aboutpage, page: () => Aboutuspage()),
    GetPage(name: RouteNames.learnpage, page: () => LearnPage()),
  ];
}
