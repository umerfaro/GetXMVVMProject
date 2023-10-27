import 'dart:async';

import 'package:get/get.dart';
import 'package:getxmvvm/Resources/routes/routes_names.dart';
class SplashServices{

  void isUserLoggedIn()
  {
     Timer(const Duration(seconds: 3), ()
       => Get.toNamed(RoutesName.loginScreen)
    );
    // Get.offNamed(Routes.home);
  }
}