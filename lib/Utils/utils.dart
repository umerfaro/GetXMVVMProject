import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:getxmvvm/Resources/colors/app_colors.dart';

class Utils{

  // this is for textformfield filed to change focus
  static void fieldFocusChange(BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  static toastMessage(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: AppColor.greyColor,
      textColor: AppColor.whiteColor,
      fontSize: 16.0,
    );
  }
//This isValidEmail function returns true if the email is valid, otherwise it returns false.
  static bool isValidEmail(String email) {
    final RegExp regex = RegExp(
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$"
    );
    return regex.hasMatch(email);
  }

  static snackBarMessage(String title,String message){
    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: AppColor.greyColor,
      colorText: AppColor.whiteColor,
      borderRadius: 10,
      margin: const EdgeInsets.all(10),
      duration: const Duration(seconds: 3),
    );
  }



}