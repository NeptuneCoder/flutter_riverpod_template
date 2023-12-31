import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod_template/app/cons/app_env.dart';

enum AppErrorType {
  //网络相关错误
  network,
  //服务端相关逻辑错误
  service,
  ignore,
  //客户端相关错误 比如 json解析、客户端发生的错误
  client,
}

/// AppError describes the error info  when request failed.
class AppError implements Exception {
  AppError({
    this.message,
    this.type = AppErrorType.client,
    this.error,
    this.code,
    this.description,
    this.stackTrace,
  });

  factory AppError.fromMsg(String errMsg, {code = '20010'}) {
    //提示给用户的错误
    return AppError(code: code, message: errMsg);
  }

  factory AppError.fromError(dynamic err) {
    if (err is AppError) {
      return err;
    } else if (err is SocketException) {
      if (kDebugMode) {
        print(err.osError!.errorCode);
      }
      if (err.osError!.errorCode == 51) {
        return AppError(
            message: '网络已断开，请保持网络连接后重试！',
            error: err,
            type: AppErrorType.network,
            code: '20201');
      }
      return AppError(
          message: '网络异常，请检查你的网络！',
          error: err,
          type: AppErrorType.network,
          code: '20201');
    } else if (err is HttpException) {
      return AppError(
          message: '服务器异常！',
          error: err,
          type: AppErrorType.network,
          code: '20202');
    } else {
      return AppError(
          message: err.toString(), error: err, stackTrace: null, code: '10000');
    }
  }

  String? get showMsg {
    if (AppEnv.isDev) {
      return message ?? toString();
    } else {
      if (type == AppErrorType.client) {
        //code 以2开头就直接显示message
        if (code != null && code!.contains('2')) {
          return message;
        } else {
          return '操作错误~';
        }
      } else {
        return message;
      }
    }
  }

  ///错误信息
  String? message;

  //错误描述信息
  String? description;

  String? code;

  AppErrorType type;

  /// The original error/exception object; It's usually not null when `type`
  /// is AppErrorType.DEFAULT
  dynamic error;

  @override
  String toString() => 'AppError [$type]: ${message ?? ''}${stackTrace ?? ''}';

  /// Error stacktrace info
  StackTrace? stackTrace;
}
