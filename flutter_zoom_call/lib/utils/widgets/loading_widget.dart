import 'package:flutter/material.dart';
import 'package:flutter_zoom_call/core/theme/app_colors.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
          strokeWidth: 4, color: ZoomAppColors.buttonColor),
    );
  }
}
