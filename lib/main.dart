import 'package:candy_app/pages/splash_page.dart';
import 'package:flutter/material.dart';

import 'package:get/route_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Dulce delivery app",
      home: SplashPage(),
    );
  }
}
