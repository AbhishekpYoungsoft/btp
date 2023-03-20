import 'package:btpapp/routes/route_pages.dart';
import 'package:btpapp/view/menupages/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            home: const HomeScreen(),
            getPages: AppRoutes.pages,
          );
        });
  }
}
