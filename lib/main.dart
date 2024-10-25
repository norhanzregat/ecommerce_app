import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/core/constants/color.dart';
import 'package:untitled1/routes.dart';
import 'package:untitled1/views/screens/on_boarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          fontFamily: "Arima",
        textTheme: TextTheme(
          headlineLarge: TextStyle(
              fontWeight: FontWeight.w900, fontSize: 25, fontFamily: "Arima"),
          bodyLarge: TextStyle(
              height: 2,
              fontSize: 17,
              color: ColorsApp.grey,
              fontWeight: FontWeight.bold,
             ),
        ),
      ),
      home: const OnBoarding(),
      routes: routes,
    );
  }
}
