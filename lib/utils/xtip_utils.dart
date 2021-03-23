/*
 * @Author     : leafney
 * @Github     : https://github.com/leafney
 * @Date       : 2021-03-23 18:46:19
 * @Description: tip
 */

import 'snackbar_utils.dart';

/// 综合弹窗，对弹窗提示的封装
/// 在内部可以使用任一弹窗组件
class XTipUtils {
  XTipUtils._();

  /// 展示弹窗提示
  /// 展示在什么位置，是根据开发者来定义的
  /// 默认情况下，弹窗提示都会在统一的位置进行展示，具体在哪个位置，由开发者进行修改
  /// 这样更便于全局的统一调用
  static void showTip(String msg,
      {int durationMillSec = 1500, Function? onCallback}) {
    // Get.snackbar
    SnackBarUtils.showTBar(
      msg,
      milliseconds: durationMillSec,
      dismissCallback: onCallback,
    );

    // // okToast
    // OKTUtils.showTToast(msg, duration: duration, onDismiss: onCallback);
  }

  /// 隐藏弹窗提示
  static void closeTip() {
    // Get.snackbar
    SnackBarUtils.closeBar();

    // // okToast
    // OKTUtils.closeToast();
  }

  /*
  /// 展示在顶部的弹窗提示
  static void showTTip(String msg, {int duration = 1500, onCallback}) {
    // Get.snackbar
    SnackBarUtils.showTBar(msg,
        milliseconds: duration, dismissCallback: onCallback);

    // // okToast
    // OKTUtils.showTToast(msg, duration: duration, onDismiss: onCallback);
  }

  /// 展示在中间的弹窗提示
  static void showCTip(String msg, {int duration = 1000, onCallback}) {
    // okToast
    OKTUtils.showCToast(msg, duration: duration, onDismiss: onCallback);
  }

  /// 展示在底部的弹窗提示
  static void showBTip(String msg, {int duration = 1000, onCallback}) {
    // // Get.snackBar
    SnackBarUtils.showBBar(msg);

    // okToast
    // OKTUtils.showBToast(msg, duration: duration, onDismiss: onCallback);
  }
  */

}
