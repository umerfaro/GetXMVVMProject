import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:getxmvvm/Data/Network/base_APi_services.dart';
import 'package:getxmvvm/Data/app_exceptions.dart';
import 'package:http/http.dart' as http;

class NetworkApiServices extends BaseApiService {
  // @override
  // Future deleteApi(String url, {Map<String, dynamic> params}) {
  //   // TODO: implement deleteApi
  //   throw UnimplementedError();
  // }

  @override
  Future<dynamic> getApi(String url) async {
    if (kDebugMode) {
      print("Api Get, url $url");
    }

    dynamic responseJson;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 20));

      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException("No Internet");
    } on RequestTimeoutException {
      throw RequestTimeoutException("Request Timeout");
    }

    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body.toString());
        return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());
      case 401:
      case 403:
        throw UnauthorisedException(response.body.toString());
      case 500:
      default:
        throw FetchDataException(
            "Error occured while Communication with Server with StatusCode : ${response.statusCode}");
    }
  }

  @override
  Future<dynamic> postApi(var data, String url) async {
    if (kDebugMode) // if the system is in debug mode then print the url and data
    {
      print("Api Get, url $url");
      print("Api Get, data $data");
    }

    dynamic responseJson;
    try {
      final response = await http
          .post(
            Uri.parse(url),
        body: data,
            // body: jsonEncode(data),

            /// if data is not in raw form then simple data
          )
          .timeout(const Duration(seconds: 20));

      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException("No Internet");
    } on RequestTimeoutException {
      throw RequestTimeoutException("Request Timeout");
    }

    return responseJson;
  }
  //
  // @override
  // Future putApi(String url, {Map<String, dynamic> params}) {
  //   // TODO: implement putApi
  //   throw UnimplementedError();
  // }
}
