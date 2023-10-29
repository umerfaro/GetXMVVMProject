import 'dart:async';

import 'package:get/get.dart';
import 'package:getxmvvm/Resources/routes/routes_names.dart';
import 'package:getxmvvm/ViewModels/Contoller/User_preferences_view_model/userPreferences.dart';
class SplashServices{

  UserPreferences userPreferences = UserPreferences();

  void isUserLoggedIn()
  {

    userPreferences.getUserPreferences().then((value) {
      if (value.token != null) {

        Timer(const Duration(seconds: 3), ()
        => Get. offAllNamed(RoutesName.homeScreen));



      }
      else {

        Timer(const Duration(seconds: 3), ()
        => Get.toNamed(RoutesName.loginScreen)
        );
      }
    });


    // Get.offNamed(Routes.home);
  }
}