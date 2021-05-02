import 'package:flutter/material.dart';

import 'src/pages/login_page.dart';

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
