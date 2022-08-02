import 'package:flutter/cupertino.dart';

extension SizedBoxExtension on num {
  /// to add horizontal space
  SizedBox get horizontalSpace => SizedBox(width: toDouble());

  /// to add vertical space
  SizedBox get verticalSpace => SizedBox(height: toDouble());
}
