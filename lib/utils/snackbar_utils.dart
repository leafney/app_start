/*
 * @Author     : leafney
 * @Github     : https://github.com/leafney
 * @Date       : 2021-03-23 18:45:22
 * @Description: GetX snackBar
 */

import 'package:get/get.dart';

/// GetX中的sanckbar弹窗组件
class SnackBarUtils {
  SnackBarUtils._();

  /// 顶部提示
  static void showTBar(String msg,
      {int milliseconds = 2000, Function? dismissCallback}) {
    Get.rawSnackbar(
        // messageText: Container(
        //   height: setW(36),
        //   alignment: Alignment.center,
        //   child: Text(
        //     msg,
        //     style: TextStyle(
        //         color: XColors.ff262626,
        //         fontSize: setS(15),
        //         fontWeight: XFontWeight.medium),
        //   ),
        // ),
        snackPosition: SnackPosition.TOP,
        // backgroundColor: XColors.ffFAB32A,
        duration: Duration(milliseconds: milliseconds),
        animationDuration: Duration(milliseconds: 800),
        snackbarStatus: (status) {
          if (status == SnackbarStatus.CLOSED) {
            // 关闭后触发
            // 防止 Function 为null 而调用失败
            dismissCallback?.call();
          }
          //  else if (status == SnackbarStatus.OPEN) {
          //   // 打开后触发
          // }
        });
  }

  /// 底部提示
  static void showBBar(String msg) {
    Get.rawSnackbar(
      message: msg,
      snackPosition: SnackPosition.BOTTOM,
      // backgroundColor: XColors.ffFAB32A,
      duration: Duration(milliseconds: 1500),
    );
  }

  /// 隐藏弹窗提示
  static void closeBar() {
    Get.back();
  }
}
