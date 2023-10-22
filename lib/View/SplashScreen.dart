import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxmvvm/Resources/asserts/Image_asserts.dart';
import 'package:getxmvvm/Resources/fonts/app_fonts.dart';
import 'package:getxmvvm/Utils/utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      //backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image(
              image: AssetImage(ImageAsserts.logo),
              fit: BoxFit.cover,
              height: 100,
              width: 100,
            ),

          ),
          Text(
            'GetX MVVM',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              //fontWeight: FontWeight.bold,
              fontFamily: AppFonts.schylerRegular,
            ),
          ),
        ],
      ),

    );
  }
}
