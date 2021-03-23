/*
 * @Author     : leafney
 * @Github     : https://github.com/leafney
 * @Date       : 2021-03-23 18:44:27
 * @Description: https://pub.dev/packages/package_info
 */

import 'package:package_info/package_info.dart';

class PackageUtils {
  PackageUtils._();
  // 获取App信息
  static Future<PackageInfo> getPackageInfo() async {
    PackageInfo info = await PackageInfo.fromPlatform();
    return info;
  }
}
