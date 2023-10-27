import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxmvvm/Resources/Components/Internect_exceptions.dart';
import 'package:getxmvvm/Resources/asserts/Image_asserts.dart';
import 'package:getxmvvm/Resources/fonts/app_fonts.dart';
import 'package:getxmvvm/Utils/utils.dart';
import 'package:getxmvvm/ViewModels/Services/SplashServices.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  SplashServices splashService = SplashServices();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashService.isUserLoggedIn();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text("Splash_Screen".tr,style: TextStyle(color: Colors.white),)),
        ],
      ),

    );
  }
}
