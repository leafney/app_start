/*
 * @Author     : leafney
 * @Github     : https://github.com/leafney
 * @Date       : 2021-03-23 18:12:43
 * @Description: Operating environment
 */

import 'api_config.dart';

enum Env {
  /// 本地环境
  Local,

  /// 开发环境
  Develop,

  /// 生产环境
  Production,
}

class EnvConfig {
  /// 运行环境
  static Env env = Env.Local;

  /// 服务器api地址
  static String get apiHost {
    switch (env) {
      case Env.Production:
        // 生产环境
        print(
            "[info]--Project is requesting the [Production Environment] api address.");

        return ApiConfig.hostProduction;
      case Env.Develop:
        // 开发环境
        print(
            "[info]--Project is requesting the [Develop Environment] api address.");

        return ApiConfig.hostDevelop;
      default:
        // 本地环境
        print(
            "[info]--Project is requesting the [Local Environment] api address.");

        return ApiConfig.hostLocal;
    }
  }
}
