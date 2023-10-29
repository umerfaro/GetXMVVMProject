import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxmvvm/Resources/Components/Round_button.dart';
import 'package:getxmvvm/Resources/routes/routes_names.dart';
import 'package:getxmvvm/ViewModels/Contoller/User_preferences_view_model/userPreferences.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  UserPreferences userPreferences = UserPreferences();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            RoundButton(
                width: 200,
                height: 50,
                text: "Logout", onPressed: (){

              Get.offAllNamed(RoutesName.loginScreen);

              userPreferences.removeUserPreferences();
            })
          ],
        
        ),
        
      ),
    );
  }
}
