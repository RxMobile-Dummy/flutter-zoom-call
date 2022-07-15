import 'package:flutter/cupertino.dart';
import 'package:flutter_zoom_call/core/theme/app_colors.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({Key? key, required this.errorMsg}) : super(key: key);
  final String errorMsg;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(errorMsg,
            style: const TextStyle(color: ZoomAppColors.buttonColor)));
  }
}
