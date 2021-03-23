/*
 * @Author     : leafney
 * @Github     : https://github.com/leafney
 * @Date       : 2021-03-23 17:37:20
 * @Description: 
 */

import 'package:app_start/page/home.dart';
import 'package:app_start/page/welcome/guide.dart';
import 'package:app_start/page/welcome/initial.dart';
import 'package:app_start/page/welcome/splash.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: Routes.INITIAL, page: () => InitPage()),
    GetPage(name: Routes.GUIDE, page: () => GuidePage()),
    GetPage(name: Routes.SPLASH, page: () => SplashPage()),
    GetPage(name: Routes.HOME, page: () => HomePage()),
  ];
}
