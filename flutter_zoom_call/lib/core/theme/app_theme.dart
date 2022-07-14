import 'package:flutter/material.dart';
import 'package:flutter_zoom_call/core/theme/app_colors.dart';

class ZoomAppTheme {
  ZoomAppTheme._();

  static ThemeData darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: ZoomAppColors.backgroundColor,
  );
}
