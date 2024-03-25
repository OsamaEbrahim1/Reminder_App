import 'package:dio/dio.dart';
import 'package:reminder_app/core/api/end_points.dart';
import 'package:reminder_app/cache/cache_helper.dart';


class ApiInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['Accept'] = "application/json";
    super.onRequest(options, handler);
  }
}
