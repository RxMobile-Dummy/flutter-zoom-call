import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_call/core/config/firebase_remote_config.dart';
import 'package:flutter_zoom_call/core/navigation/app_routes.dart';
import 'package:flutter_zoom_call/core/theme/app_theme.dart';
import 'package:flutter_zoom_call/features/zoom_video_call/presentation/cubits/auth/auth_cubit.dart';
import 'package:flutter_zoom_call/features/zoom_video_call/presentation/pages/login_page.dart';
import 'package:flutter_zoom_call/utils/constants/string_constants.dart';
import 'package:flutter_zoom_call/utils/widgets/custom_error_widget.dart';
import 'package:flutter_zoom_call/utils/widgets/loading_widget.dart';

import 'features/zoom_video_call/presentation/pages/home_page.dart';
import 'features/zoom_video_call/presentation/pages/meeting_join_page.dart';
import 'features/zoom_video_call/zoom_call_injection_container.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.initializeZoomCallingFeature();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final authCubit = AuthCubit();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: ZoomStringConstants.appName,
        theme: ZoomAppTheme.darkTheme,
        routes: {
          ZoomAppRouteNames.loginPage: (context) => LoginPage(),
          ZoomAppRouteNames.homePage: (context) => HomePage(),
          ZoomAppRouteNames.meetingJoinPage: (context) => MeetingJoinPage(),
        },
        home: FutureBuilder<FirebaseRemoteConfig>(
          future: ZoomRemoteConfigBase.setupRemoteConfig(),
          builder: (BuildContext context,
              AsyncSnapshot<FirebaseRemoteConfig> snapshot) {
            return snapshot.hasData
                ? StreamBuilder(
                    stream: authCubit.listenToAuthStateChanges(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const LoadingWidget();
                      }
                      if (snapshot.hasData) {
                        return HomePage();
                      }

                      return LoginPage();
                    },
                  )
                : CustomErrorWidget(
                    errorMsg: ZoomStringConstants.errorLoadingPageText);
          },
        ));
  }
}
