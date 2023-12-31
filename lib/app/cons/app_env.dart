class AppEnv {
  /// 基础地址
  static get baseUrl {
    return 'http://43.138.163.223:32000/';
  }

  /// 是否开启代理抓包
  static bool get isPorxy => false;

  static get isDev {
    return false;
  }
}
