import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_zoom_call/core/navigation/app_routes.dart';
import 'package:flutter_zoom_call/core/theme/app_text_styles.dart';
import 'package:flutter_zoom_call/features/zoom_video_call/presentation/cubits/auth/auth_cubit.dart';
import 'package:flutter_zoom_call/utils/constants/string_constants.dart';
import 'package:flutter_zoom_call/utils/widgets/custom_button_widget.dart';
import 'package:flutter_zoom_call/utils/widgets/loading_widget.dart';
import 'package:flutter_zoom_call/utils/widgets/snackbar_widget.dart';

import '../../zoom_call_injection_container.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final authCubit = sl<AuthCubit>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ZoomStringConstants.startOrJoinMeetingText,
              style: ZoomAppTextStyles.loginTextStyle,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Image.asset(ZoomStringConstants.loginImagePath),
            ),
            BlocConsumer<AuthCubit, AuthState>(
              bloc: authCubit,
              listener: (context, state) {
                if (state is Authenticated) {
                  Navigator.pushNamedAndRemoveUntil(
                      context, ZoomAppRouteNames.homePage, (route) => false);
                }
                if (state is UnAuthenticated) {
                  showSnackBar(context, ZoomStringConstants.unAuthenticatedMsg);
                }
              },
              builder: (_, state) {
                if (state is Authenticating) {
                  return LoadingWidget();
                } else {
                  return CustomButtonWidget(
                      text: ZoomStringConstants.googleSignInButtonText,
                      onPressed: () async {
                        await authCubit.signInViaGoogleAccount();
                      });
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
