
import 'package:getxmvvm/Data/Network/network_api_services.dart';
import 'package:getxmvvm/Resources/app_url/app_urls.dart';

class LoginRepository{


  final _apiServices =NetworkApiServices();

  Future<dynamic> login(var data ) async
  {
    dynamic response = await _apiServices.postApi(data, AppUrl.LOGIN_URL);
    return response;
  }



}