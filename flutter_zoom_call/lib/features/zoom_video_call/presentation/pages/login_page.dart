import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_zoom_call/core/navigation/app_routes.dart';
import 'package:flutter_zoom_call/features/zoom_video_call/presentation/cubits/auth/auth_cubit.dart';
import 'package:flutter_zoom_call/utils/constants/string_constants.dart';
import 'package:flutter_zoom_call/utils/widgets/custom_button_widget.dart';
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
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 38.0),
              child: Image.asset(ZoomStringConstants.loginImagePath),
            ),
            BlocListener<AuthCubit, AuthState>(
                bloc: authCubit,
                listener: (context, state) {
                  if (state is Authenticated) {
                    Navigator.pushNamedAndRemoveUntil(
                        context, ZoomAppRouteNames.homePage, (route) => false);
                  } else {
                    showSnackBar(
                        context, ZoomStringConstants.unAuthenticatedMsg);
                  }
                },
                child: CustomButtonWidget(
                    text: ZoomStringConstants.googleSignInButtonText,
                    onPressed: () async {
                      await authCubit.signInViaGoogleAccount();
                    }))
          ],
        ),
      ),
    );
  }
}
