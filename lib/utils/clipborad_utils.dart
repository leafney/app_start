/*
 * @Author     : leafney
 * @Github     : https://github.com/leafney
 * @Date       : 2021-05-03 14:34:47
 * @Description: clipboard
 */

import 'package:flutter/services.dart';

class ClipboradUtils {
  ClipboradUtils._();

  /// 复制内容到剪贴板
  /// ClipboardUtils.setText('value');
  static Future<void> setText(String text) {
    return Clipboard.setData(ClipboardData(text: text));
  }

  /// 获取剪贴板中的内容
  /// String data = await ClipboardUtils.getText();
  static Future<String> getText() async {
    ClipboardData? clipboardData =
        await Clipboard.getData(Clipboard.kTextPlain);
    if (clipboardData != null) {
      return Future.value(clipboardData.text);
    } else {
      return "";
    }
  }

  /// 清空剪贴板
  /// ClipboardUtils.clear();
  static void clear() {
    setText('');
  }
}
