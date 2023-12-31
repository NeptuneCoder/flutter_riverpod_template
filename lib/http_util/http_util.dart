// ignore_for_file: use_build_context_synchronously

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod_template/app/cons/app_env.dart';

import 'app_error.dart';
import 'interceptors/dio_interceptors.dart';

class HttpUtil {
  static final HttpUtil _singleton = HttpUtil._();

  // 该类为单例模式
  static HttpUtil get instance => _singleton;

  static HttpUtil get I => instance;

  static late Dio _dio;

  Dio get dio => _dio;

  HttpUtil._() {
    final BaseOptions options = BaseOptions(
      validateStatus: (_) {
        // 不使用http状态码判断状态，使用AdapterInterceptor来处理（适用于标准REST风格）
        return true;
      },
      baseUrl: AppEnv.baseUrl,
    );
    _dio = Dio(options);

    addInterceptor(
      LogInterceptor(requestBody: true, responseBody: true),
    );
    addInterceptor(
      HeaderInterceptor(),
    );
    // SystemProxy.getProxySettings().then((systemProxy) {
    //   if (systemProxy != null) {
    //     final host = systemProxy['host'];
    //     final port = systemProxy['port'];
    //     if (AppEnv.isPorxy && host != null && host.isNotEmpty) {
    //       final proxyIP = '${systemProxy['host']}:${port ?? '8888'}';
    //       //开启代理抓包
    //       (_dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient =
    //           () {
    //         final client = HttpClient();
    //         client.findProxy = (uri) => "PROXY $proxyIP";
    //         //代理工具会提供一个抓包的自签名证书，会通不过证书校验，所以我们禁用证书校验
    //         client.badCertificateCallback =
    //             (X509Certificate cert, String host, int port) => true;
    //         return client;
    //       };
    //     }
    //   }
    // });
  }

  /// 添加拦截器
  void addInterceptor(Interceptor interceptor) {
    _dio.interceptors.add(interceptor);
  }

  Future<dynamic> req<T>(
    String path, {
    data,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    Options? options,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      Response response = await _dio.request(
        path,
        data: data,
        options: options,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );

      if (response.data['code'] == 0) {
        return response.data['data'];
      } else {
        throw AppError(
          message: '发生错误啦~',
          description: '加载数据错误啦',
          type: AppErrorType.service,
          code: '${response.data['code']}',
        );
      }
    } catch (err) {
      if (err is DioException) {
        if (err.type == DioExceptionType.cancel) {
          throw AppError(
              message: '取消请求',
              error: err,
              type: AppErrorType.network,
              code: '201${err.type.index}1');
        } else if (err.type == DioExceptionType.sendTimeout) {
          if (err.error != null) {
            //这块感觉嵌套了，主要是为了与format_interceptor 获取dioError 中 为AppError类型的error
            throw AppError.fromError(err.error);
          } else {
            throw AppError(
                message: '网络异常，请检查你的网络！',
                error: err,
                type: AppErrorType.network,
                code: '201${err.type.index}2');
          }
        } else if (err.type == DioExceptionType.receiveTimeout) {
          dynamic e = err.error;
          if (e is SocketException) {
            throw AppError(
                message: '网络异常，请检查你的网络！',
                error: err,
                type: AppErrorType.network,
                code: '201${err.type.index}1');
          } else if (e is HttpException) {
            throw AppError(
                message: '服务器异常！',
                error: err,
                type: AppErrorType.network,
                code: '201${err.type.index}2');
          }
          throw AppError(
              message: '网络异常，请检查你的网络！',
              error: err,
              type: AppErrorType.network,
              code: '201${err.type.index}3');
        } else {
          throw AppError(
              message: '连接超时！',
              error: err,
              type: AppErrorType.network,
              code: '201${err.type.index}0');
        }
      } else {
        throw AppError.fromError(err);
      }
    }
  }

  Future<T> getParse<T>(
    String path, {
    required T Function(dynamic data) parseJsonFn,
    CancelToken? cancelToken,
    Options? options,
    Map<String, dynamic>? params,
  }) async {
    final ret = await get(path,
        params: params, cancelToken: cancelToken, options: options);
    return parseJsonFn(ret);
  }

  Future<dynamic> get(
    String path, {
    CancelToken? cancelToken,
    Options? options,
    Map<String, dynamic>? params,
  }) async {
    return req(
      path,
      options: options, //contentType 默认为GET
      queryParameters: params,
      cancelToken: cancelToken,
    );
  }

  Future<T> postParse<T>(
    String path, {
    required T Function(dynamic data) parseJsonFn,
    CancelToken? cancelToken,
    Options? options,
    dynamic params,
  }) async {
    final ret = await post(path,
        params: params, cancelToken: cancelToken, options: options);
    return parseJsonFn(ret);
  }

  Future<dynamic> post(
    String path, {
    CancelToken? cancelToken,
    Options? options,
    dynamic params,
  }) async {
    options ??= Options();
    options.method = "POST";
    return req(
      path,
      data: params,
      options: options,
      cancelToken: cancelToken,
    );
  }
}
