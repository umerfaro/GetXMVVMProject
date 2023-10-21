
class AppException implements Exception{

  final _message;
  final _prefix;

  //contructor
  AppException([this._message, this._prefix]);

String toString(){
  return "$_prefix $_message";
}

}
//internet exception
class InternetException extends AppException{

  InternetException([String? message]) : super(message, "No Internet: ");

}
//request exception
class RequestTimeoutException extends AppException{

  RequestTimeoutException([String? message]) : super(message, "Request Timeout: ");

}
//server exception
class ServerException extends AppException{

  ServerException([String? message]) : super(message, "Server Error: ");

}
 class BadRequestException extends AppException{

  BadRequestException([String? message]) : super(message, "Bad Request: ");
}

class UnauthorisedException extends AppException{

  UnauthorisedException([String? message]) : super(message, "Unauthorised: ");
}
class FetchDataException extends AppException{

  FetchDataException([String? message]) : super(message, "Error During Communication: ");
}