import 'package:dio/dio.dart';
import 'package:doctorak/core/network/api_error_model.dart';

class ApiErrorHandler {
  static ApiErrorModel handle(dynamic error) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.connectionTimeout:
          return const ApiErrorModel(
            message:
                'Connection timeout. Please check your internet connection and try again.',
            code: null,
          );

        case DioExceptionType.sendTimeout:
          return const ApiErrorModel(
            message: 'Request timeout. Please try again later.',
            code: null,
          );

        case DioExceptionType.receiveTimeout:
          return const ApiErrorModel(
            message:
                'Server is taking too long to respond. Please try again later.',
            code: null,
          );

        case DioExceptionType.badCertificate:
          return const ApiErrorModel(
            message: 'Security certificate error. Please contact support.',
            code: null,
          );

        case DioExceptionType.badResponse:
          return _handleBadResponse(error.response?.data);

        case DioExceptionType.cancel:
          return const ApiErrorModel(
            message: 'Request was cancelled.',
            code: null,
          );

        case DioExceptionType.connectionError:
          return const ApiErrorModel(
            message:
                'No internet connection. Please check your network settings.',
            code: null,
          );

        case DioExceptionType.unknown:
          return const ApiErrorModel(
            message: 'An unexpected error occurred. Please try again.',
            code: null,
          );
      }
    } else {
      return ApiErrorModel(message: error.toString(), code: null);
    }
  }

  static ApiErrorModel _handleBadResponse(dynamic data) {
    if (data is Map<String, dynamic>) {
      return ApiErrorModel.fromJson(data);
    }
    return ApiErrorModel(message: data?.toString() ?? 'Bad response', code: null);
  }
}
