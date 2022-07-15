import 'package:flutter/material.dart';
import 'package:flutter_zoom_call/features/zoom_video_call/presentation/cubits/auth/auth_cubit.dart';
import 'package:flutter_zoom_call/utils/constants/string_constants.dart';
import 'package:flutter_zoom_call/utils/extensions/sizedbox/sized_box_extensions.dart';
import 'package:flutter_zoom_call/utils/widgets/custom_button_widget.dart';

import '../../zoom_call_injection_container.dart';

class AccountPage extends StatelessWidget {
  AccountPage({Key? key}) : super(key: key);
  final cubit = sl<AuthCubit>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        30.verticalSpace,
        CircleAvatar(
            child: Image.network(cubit.user?.photoURL ?? '', fit: BoxFit.cover),
            radius: 60),
        30.verticalSpace,
        Text(cubit.user?.displayName ?? ''),
        30.verticalSpace,
        CustomButtonWidget(
            text: ZoomStringConstants.logOutBtnText,
            onPressed: () async {
              await cubit.signOut();
            })
      ],
    );
  }
}
