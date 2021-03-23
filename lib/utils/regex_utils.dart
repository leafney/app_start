/*
 * @Author     : leafney
 * @Github     : https://github.com/leafney
 * @Date       : 2021-03-23 18:44:41
 * @Description: regex
 */

class RegexUtils {
  RegexUtils._();

  // 验证手机号格式是否正确
  static bool isPhone(String phone) {
    RegExp mobile = new RegExp(r"^1[3-9](\d{9})$");
    return mobile.hasMatch(phone);
  }
}
