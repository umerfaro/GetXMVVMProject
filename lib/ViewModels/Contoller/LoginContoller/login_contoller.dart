import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{

  final  logInFormKey = GlobalKey<FormState>().obs;
  final  emailController = TextEditingController().obs;
  final  emailFocusNode = FocusNode().obs;
  final  passwordController = TextEditingController().obs;
  final  passwordFocusNode = FocusNode().obs;


}