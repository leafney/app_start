/*
 * @Author     : leafney
 * @Github     : https://github.com/leafney
 * @Date       : 2021-03-23 18:44:11
 * @Description: https://pub.dev/packages/logger
 */

import 'package:logger/logger.dart';

class LogUtils {
  // 参照 DioUtils 的封装方式实现
  Logger? _logger;
  static LogUtils? _instance;

  static LogUtils instance() {
    if (_instance == null) {
      _instance = LogUtils();
    }
    return _instance!;
  }

  LogUtils() {
    // add initialization logic if needed example: Logger(printer: PrettyPrinter(methodCount: 0));
    _logger = Logger(
        printer: PrettyPrinter(
      colors: false, // 解决输出的颜色是乱码问题
    ));
  }

  void v(dynamic message) {
    _logger!.v(message);
  }

  void d(dynamic message) {
    _logger!.d(message);
  }

  void i(dynamic message) {
    _logger!.i(message);
  }

  void e(dynamic message) {
    _logger!.e(message);
  }

  void w(dynamic message) {
    _logger!.w(message);
  }
}
