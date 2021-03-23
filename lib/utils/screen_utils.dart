/*
 * @Author     : leafney
 * @Github     : https://github.com/leafney
 * @Date       : 2021-03-23 18:44:50
 * @Description: https://pub.dev/packages/flutter_screenutil
 */

import 'package:flutter_screenutil/flutter_screenutil.dart';

/// 根据屏幕宽度适配尺寸
double setW(num width) {
  return ScreenUtil().setWidth(width);
}

/// 根据屏幕高度适配尺寸
double setH(num height) {
  return ScreenUtil().setHeight(height);
}

/// 根据宽度或高度中的较小者进行调整
double setR(num radius) {
  return ScreenUtil().radius(radius);
}

/// 适配字体
double setS(num fontSize) {
  return ScreenUtil().setSp(fontSize);
}
