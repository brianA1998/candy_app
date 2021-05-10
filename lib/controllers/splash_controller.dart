import 'package:candy_app/pages/login_page.dart';

import 'package:get/state_manager.dart';
import 'package:get/route_manager.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    Future.delayed(
      Duration(seconds: 2),
      () {
        Get.off(
          LoginPage(),
          transition: Transition.zoom,
        );
      },
    );
  }
}
