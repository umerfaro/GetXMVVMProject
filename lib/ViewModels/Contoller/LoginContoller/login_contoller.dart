import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxmvvm/Models/login/login_response_model.dart';
import 'package:getxmvvm/Repositroy/Login_repo/login_repo.dart';
import 'package:getxmvvm/Resources/routes/routes_names.dart';
import 'package:getxmvvm/Utils/utils.dart';
import 'package:getxmvvm/ViewModels/Contoller/User_preferences_view_model/userPreferences.dart';

class LoginController extends GetxController{

  final _api= LoginRepository();

  UserPreferences userPreferences = UserPreferences();

  final  logInFormKey = GlobalKey<FormState>().obs;
  final  emailController = TextEditingController().obs;
  final  emailFocusNode = FocusNode().obs;

  final  passwordController = TextEditingController().obs;
  final  passwordFocusNode = FocusNode().obs;


  RxBool loginButtonEnable = false.obs;


  void loginApi() async
  {
    if (kDebugMode) {
      print(emailController.value.text.toString());
    }
    if (kDebugMode) {
      print(passwordController.value.text.toString());
    }

    loginButtonEnable.value = true;

    Map data = {
      "email": emailController.value.text.toString(),
      "password": passwordController.value.text.toString()
    };
    _api.login(data).then((value) {

      loginButtonEnable.value = false;
      Utils.snackBarMessage("Success",value.toString());
    userPreferences.saveUserPreferences(LoginResponseModel.fromJson(value)).then((value) {

      Get.delete<LoginController>();
      Get.offAllNamed(RoutesName.homeScreen);

    });

    }).onError((error, stackTrace) {

      loginButtonEnable.value = false;
      Utils.snackBarMessage("Error",error.toString());

    });



  }



}