import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_riverpod_template/app/store/app_store.dart';

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
