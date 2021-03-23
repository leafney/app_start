/*
 * @Author     : leafney
 * @Github     : https://github.com/leafney
 * @Date       : 2021-03-23 18:12:51
 * @Description: http config
 */

import 'env_config.dart';

class HttpConfig {
  HttpConfig._();

  /// 根据不同运行环境来获取
  static final httpBaseUrl = EnvConfig.apiHost;

  /// 超时时间
  static const httpTimeOut = 5000;
}
