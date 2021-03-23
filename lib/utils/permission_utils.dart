/*
 * @Author     : leafney
 * @Github     : https://github.com/leafney
 * @Date       : 2021-03-23 18:44:35
 * @Description: https://pub.dev/packages/permission_handler
 */

import 'package:permission_handler/permission_handler.dart';

/// 权限申请
class PermissionUtils {
  PermissionUtils._();

  /// 获取相机权限 carema
  static Future<bool> getCaremaPermission() async {
    PermissionStatus permisCarema = await Permission.camera.status;
    print('permission $permisCarema');
    if (!permisCarema.isGranted) {
      // 当前权限拒绝，请求获取授权权限
      return await Permission.camera.request().isGranted;
    } else {
      return true;
    }
  }

  /// 获取打开相册权限 photos
  static Future<bool> getPhotosPermission() async {
    PermissionStatus permisPhotos = await Permission.photos.status;
    print('permission $permisPhotos');
    if (!permisPhotos.isGranted) {
      // 当前权限拒绝，请求获取授权权限
      return await Permission.photos.request().isGranted;
    } else {
      return true;
    }
  }
}
