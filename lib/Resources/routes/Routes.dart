
import 'package:get/get.dart';
import 'package:getxmvvm/Resources/routes/routes_names.dart';
import 'package:getxmvvm/View/SplashScreen.dart';

class AppRoutes{

  static appRoutes () => [
    GetPage(
        name: RoutesName.splashScreen,
        page: ()=> SplashScreen(),
    transition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 250),
    ),


  ];

}