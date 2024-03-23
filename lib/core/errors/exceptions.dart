import 'package:dio/dio.dart';
import 'package:reminder_app/core/errors/error_model.dart';

class ServerException implements Exception{
  final ErrorModel errmodel;

  ServerException({required this.errmodel});
}





  void handleDioExceptions(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        throw ServerException(
            errmodel: ErrorModel.fromJson(e.response!.data));
    
      case DioExceptionType.sendTimeout:
        throw ServerException(
            errmodel: ErrorModel.fromJson(e.response!.data));
    
      case DioExceptionType.receiveTimeout:
        throw ServerException(
            errmodel: ErrorModel.fromJson(e.response!.data));
    
      case DioExceptionType.badCertificate:
        throw ServerException(
            errmodel: ErrorModel.fromJson(e.response!.data));
    
      case DioExceptionType.cancel:
        throw ServerException(
            errmodel: ErrorModel.fromJson(e.response!.data));
    
      case DioExceptionType.connectionError:
        throw ServerException(
            errmodel: ErrorModel.fromJson(e.response!.data));
    
      case DioExceptionType.unknown:
        throw ServerException(
            errmodel: ErrorModel.fromJson(e.response!.data));
    
      case DioExceptionType.badResponse:
      switch (e.response?.statusCode) {
        case 400:                        //bad request
        throw ServerException(
            errmodel: ErrorModel.fromJson(e.response!.data));
        case 401:                        //unautherized
        throw ServerException(
            errmodel: ErrorModel.fromJson(e.response!.data));
        case 403:                        //forbidden
        throw ServerException(
            errmodel: ErrorModel.fromJson(e.response!.data));
        case 404:                        //not found
        throw ServerException(
            errmodel: ErrorModel.fromJson(e.response!.data));
        case 409:                        //cofficient
        throw ServerException(
            errmodel: ErrorModel.fromJson(e.response!.data));
        case 422:                        //unprocessable entity
        throw ServerException(
            errmodel: ErrorModel.fromJson(e.response!.data));
        case 504:                        //Server Exception
        throw ServerException(
            errmodel: ErrorModel.fromJson(e.response!.data));
    }
        }
  }