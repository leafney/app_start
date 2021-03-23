/*
 * @Author     : leafney
 * @Github     : https://github.com/leafney
 * @Date       : 2021-03-23 18:43:19
 * @Description: https://pub.dev/packages/device_info
 */

import 'dart:io';
import 'package:device_info/device_info.dart';

class DeviceUtils {
  DeviceUtils._();

// 获取设备信息
  static Future<Map<String, dynamic>> getDeviceInfo() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    Map<String, dynamic> res = Map<String, dynamic>();
    if (Platform.isAndroid) {
      AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;

      res = _readAndroidData(androidInfo);
    } else if (Platform.isIOS) {
      IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
      res = _readIosData(iosInfo);
    }
    return res;
  }

  /// 提取android设备信息
  static Map<String, dynamic> _readAndroidData(AndroidDeviceInfo build) {
    return <String, dynamic>{
      "device_type": "android",
      "is_physical_device": build.isPhysicalDevice,
      "apk_sdk": build.version.sdkInt,
      "apk_release": build.version.release,
      "apk_incremental": build.version.incremental,
      "apk_brand": build.brand,
      "apk_device": build.device,
      "apk_host": build.host,
      "apk_manufacturer": build.manufacturer,
      "apk_model": build.model,
      "apk_android_id": build.androidId,
      "ios_name": "",
      "ios_system_name": "",
      "ios_system_version": "",
      "ios_model": "",
      "ios_identifier": "",
    };
  }

  /// 提取ios设备信息
  static Map<String, dynamic> _readIosData(IosDeviceInfo build) {
    return <String, dynamic>{
      "device_type": "ios",
      "is_physical_device": build.isPhysicalDevice,
      "apk_sdk": 0,
      "apk_release": "",
      "apk_incremental": "",
      "apk_brand": "",
      "apk_device": "",
      "apk_host": "",
      "apk_manufacturer": "",
      "apk_model": "",
      "apk_android_id": "",
      "ios_name": build.name,
      "ios_system_name": build.systemName,
      "ios_system_version": build.systemVersion,
      "ios_model": build.model,
      "ios_identifier": build.identifierForVendor,
    };
  }
}
