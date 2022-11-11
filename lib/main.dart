
import 'package:autoelx/common/colors.dart';
import 'package:autoelx/common/textstyle.dart';
import 'package:autoelx/splashscrenns/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AutoELX',
      home:  const SplashScreen(),
      theme:ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: ambercolor,
          titleTextStyle: appbartitle,
          iconTheme: const IconThemeData(color: blackcolor,size: 30)
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: ambercolor
        ),
      )
    );
  }
}