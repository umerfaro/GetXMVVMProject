import 'package:get/get.dart';
import 'package:getxmvvm/Models/login/login_response_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences extends GetxController{

  Future<bool> saveUserPreferences(LoginResponseModel responseModel) async
  {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('token', responseModel.token!.toString());
    return true;
  }

  Future<LoginResponseModel> getUserPreferences() async
  {
    SharedPreferences prefs = await SharedPreferences.getInstance();
     String? token= prefs.getString('token');
    return LoginResponseModel(
      token: token
    );
  }

  Future<bool> removeUserPreferences() async
  {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
    return true;
  }


}