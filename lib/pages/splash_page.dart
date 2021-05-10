import 'package:candy_app/controllers/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: SplashController(),
        builder: (_) => Scaffold(
              body: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: new Color(0xff5166BD),
                    ),
                  ),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1000.0),
                          image: DecorationImage(
                            image: AssetImage("assets/CandyLogo.jpg"),
                            fit: BoxFit.cover,
                          )),
                      height: 100,
                      width: 100,
                    ),
                  ),
                ],
              ),
            ));
  }
}
