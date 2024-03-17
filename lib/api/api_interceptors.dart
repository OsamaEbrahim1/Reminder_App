import 'package:dio/dio.dart';
import 'package:reminder_app/api/end_points.dart';
import 'package:reminder_app/cache/cache_helper.dart';


class ApiInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['token'] = CacheHelper().getData(key: ApiKey.token) != null
        ? 'FOODAPI ${CacheHelper().getData(key: ApiKey.token)}'
        : null;
    super.onRequest(options, handler);
  }
}
