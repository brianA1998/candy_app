import 'package:candy_app/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dulce delivery app",
      routes: {
        '/': (BuildContext context) => LoginPage(),
      },
    );
  }
}
