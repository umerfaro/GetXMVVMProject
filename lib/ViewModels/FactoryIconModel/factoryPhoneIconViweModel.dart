
import 'package:get/get.dart';




class FactoryIconForPhoneNumber extends GetxController{



  final RxString _countryCode = "92".obs;
  RxString get getCountryCode => _countryCode.value.obs;

  void changeCountryCode(String value) {
    _countryCode.value = value;

  }


}