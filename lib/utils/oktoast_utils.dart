/*
 * @Author     : leafney
 * @Github     : https://github.com/leafney
 * @Date       : 2021-03-23 18:44:19
 * @Description: https://pub.dev/packages/oktoast
 */

import 'package:oktoast/oktoast.dart';

/// Toast弹窗组件
class OKTUtils {
  OKTUtils._();

  /// 展示在顶间的弹窗提示
  static ToastFuture showTToast(String msg, {int duration = 1000, onDismiss}) {
    return showToast(
      msg,
      duration: Duration(milliseconds: duration),
      position: ToastPosition.top,
      dismissOtherToast: true,
      onDismiss: onDismiss,
    );
  }

  /// 展示在中间的弹窗提示
  static ToastFuture showCToast(String msg, {int duration = 1000, onDismiss}) {
    return showToast(
      msg,
      duration: Duration(milliseconds: duration),
      position: ToastPosition.center,
      dismissOtherToast: true,
      onDismiss: onDismiss,
    );
  }

  /// 展示在底部的弹窗提示
  static ToastFuture showBToast(String msg, {int duration = 1000, onDismiss}) {
    return showToast(
      msg,
      duration: Duration(milliseconds: duration),
      dismissOtherToast: true,
      onDismiss: onDismiss,
    );
  }

  /// 隐藏弹窗提示
  static void closeToast() {
    dismissAllToast();
  }
}
