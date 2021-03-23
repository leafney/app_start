/*
 * @Author     : leafney
 * @Github     : https://github.com/leafney
 * @Date       : 2021-03-23 18:45:39
 * @Description: string utils
 */

/// 字符串帮助类
class StrUtils {
  StrUtils._();

  /// 截取字符串的指定长度
  static String getSubStrByLength(
      {required String str, required int length, int start = 0}) {
    int endIndex = str.length;

    if (length < endIndex) endIndex = length;

    return str.substring(start, endIndex);
  }
}
