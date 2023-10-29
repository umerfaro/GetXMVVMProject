
import 'package:get/get.dart';
import 'package:getxmvvm/Resources/routes/routes_names.dart';
import 'package:getxmvvm/View/Home/Home_view.dart';
import 'package:getxmvvm/View/Login/LoginView.dart';
import 'package:getxmvvm/View/SplashScreen/SplashScreen.dart';

class AppRoutes{

  static appRoutes () => [
    GetPage(
        name: RoutesName.splashScreen,
        page: ()=> const SplashScreen(),
    transition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 250),
    ),

    GetPage(
      name: RoutesName.loginScreen,
      page: ()=> const  LoginView(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 250),
    ),


    GetPage(
      name: RoutesName.homeScreen,
      page: ()=> const  Home(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 250),
    ),


  ];

}