
import 'package:getxmvvm/Data/response/status.dart';

class ApiResponse<T> {

  Status? status ;
  T? data ;
  String? message ;

  ApiResponse(this.status , this.data, this.message);


  ApiResponse.loading() : status = Status.LOADING ;

  ApiResponse.completed(this.data) : status = Status.COMPLETED ;

  ApiResponse.error(this.message) : status = Status.ERROR ;

  ApiResponse.unauthenticated(this.message) : status = Status.UNAUTHENTICATED ;

  ApiResponse.unauthorized(this.message) : status = Status.UNAUTHORIZED ;

  @override
  String toString(){
    return "Status : $status \n Message : $message \n Data: $data" ;
  }

}