import 'package:get/get.dart';

class Languages extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys =>{

    'en_US':{
      'email_hint':'Enter Email',
      'internet_exception':'No Internet Connection',
      'general_exception':'Something went wrong',
      'Splash_Screen':'Welcome to Splash Screen',
      'login':'Login',
      'password_hint':'Enter Password',
      'password_empty':'Password is empty',
      'email_empty':'Email is empty',
    },
    'ur_PK':{
      'email_hint':'ای میل درج کریں۔',
      'internet_exception':'کوئی انٹرنیٹ کنکشن نہیں',
      'general_exception':'کچھ غلط ہوگیا',
      'Splash_Screen':'سپلیش اسکرین میں خوش آمدید',
      'login':'لاگ ان',
      'password_hint':'پاس ورڈ درج کریں۔',
      'password_empty':'پاس ورڈ خالی ہے',
      'email_empty':'ای میل خالی ہے',
    }





  };

}