/*
 * @Author     : leafney
 * @Github     : https://github.com/leafney
 * @Date       : 2021-03-23 18:45:47
 * @Description: https://pub.dev/packages/intl
 */

import 'package:intl/intl.dart';

class TimeUtils {
  TimeUtils._();
  // 获取当前时间戳
  static int getUnixTime10() {
    return (DateTime.now().millisecondsSinceEpoch / 1000).floor();
  }

  /// 对时间戳格式化
  static String getDateTimeStr(int unixTime, {String format = "yyyy-MM-dd"}) {
    var date = DateTime.fromMillisecondsSinceEpoch(unixTime * 1000);
    return DateFormat(format).format(date);
  }
}
