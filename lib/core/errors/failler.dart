import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

abstract class Failler {
  final String errorMessage;

  Failler(this.errorMessage);
}

class ServerFailler extends Failler {
  ServerFailler(super.errorMessage);
  factory ServerFailler.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailler('Conntions timed out ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailler('Send timed out ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailler('Recive timed out ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailler('Conntions timed out ApiServer');
      case DioExceptionType.badResponse:
        return ServerFailler.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailler('Requset to Api was canceled');
      case DioExceptionType.connectionError:
        return ServerFailler('Requset failed to Network');
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailler('No connection');
        } else {
          return ServerFailler('Unknown error ,Plase try again later');
        }
      default:
        return ServerFailler('Opps thare was anerror, try again');
    }
  }
  factory ServerFailler.fromResponse(int StatesCode, dynamic response) {
    if (StatesCode == 400 || StatesCode == 401 || StatesCode == 403) {
      return ServerFailler(response['error']['message']);
    } else if (StatesCode == 404) {
      return ServerFailler('yout request not found');
    } else if (StatesCode == 500) {
      return ServerFailler("Internal Server Error , try later");
    } else {
      return ServerFailler('Opps thare was anerror, try again');
    }
  }
}
