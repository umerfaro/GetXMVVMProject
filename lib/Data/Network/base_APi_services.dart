

abstract class BaseApiService
{
  Future<dynamic> getApi(String url);
   Future<dynamic> postApi(dynamic data, String url);
  // Future<dynamic> putApi(String url, {Map<String, dynamic> params});
  // Future<dynamic> deleteApi(String url, {Map<String, dynamic> params});
}