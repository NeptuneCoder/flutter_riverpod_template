import 'package:dio/dio.dart';

class HeaderInterceptor extends Interceptor {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (options.path != '/login') {
      /// 设置token GetIt.I.get<AppStore>().userInfo?.token ?? '';
      final token = "";
      final String accessToken = token;
      if (accessToken.isNotEmpty) {
        options.headers['Authorization'] = 'Bearer $accessToken';
      }
    }

    handler.next(options);
  }
}
