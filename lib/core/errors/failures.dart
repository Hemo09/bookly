import 'package:dio/dio.dart';

// ignore: deprecated_member_use
abstract class Failure {
  final String message;
  const Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(super.message);
  factory ServerFailure.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("connextion timed out ");
      case DioExceptionType.sendTimeout:
        return ServerFailure("send time out ");
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponseError(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.receiveTimeout:
        return ServerFailure("receive time out ");
      case DioExceptionType.cancel:
        return ServerFailure("Request to api services was canceld");
      case DioExceptionType.connectionError:
        if (dioException.message!.contains("SocketException")) {
          return ServerFailure("No internet connection");
        }
        return ServerFailure("there was a connection error");
      default:
        return ServerFailure("oops There was an error , try again");
    }
  }

  factory ServerFailure.fromResponseError(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response["error"]["message"]);
    } else if (statusCode == 404) {
      return ServerFailure("Your request not found  , please try again.");
    } else if (statusCode == 500) {
      return ServerFailure("Internal server error  , please try later.");
    } else {
      return ServerFailure("there was an error, please try again");
    }
  }
}
