/*
 * @Author     : leafney
 * @Github     : https://github.com/leafney
 * @Date       : 2021-03-19 11:45:54
 * @Description: main
 */

import 'package:app_start/page/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil_init.dart';
import 'package:get/get.dart';
import 'package:oktoast/oktoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 667),
      builder: () => OKToast(
        // Initialize the default configuration
        backgroundColor: Colors.black45,
        textPadding:
            const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
        radius: 4.0,
        position: ToastPosition.center,
        child: GetMaterialApp(
          title: 'Flutter Demo',
          // theme: appThemeData,
          // getPages: AppPages.pages,
          home: HomePage(),
          // home: InitPage(),
        ),
      ),
    );
  }
}
