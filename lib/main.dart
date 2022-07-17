import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/pages/splash_screen.dart';
import 'package:weather_app/utils/Binding/HomeBinding.dart';
import 'package:weather_app/widget/custom_error_widget.dart';

void main() {
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // todo => customizeErrorScreen to better shape
    buildCustomErrorWidget();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Balmy-Weather',
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => SplashScreen(),
          binding: HomeBinding(),
        )
      ],
    );
  }
}
