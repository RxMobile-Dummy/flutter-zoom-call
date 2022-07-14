import 'package:flutter/material.dart';
import 'package:flutter_zoom_call/core/navigation/app_routes.dart';
import 'package:flutter_zoom_call/core/theme/app_theme.dart';
import 'package:flutter_zoom_call/features/zoom_video_call/presentation/pages/login_page.dart';

import 'features/zoom_video_call/presentation/pages/home_page.dart';
import 'features/zoom_video_call/presentation/pages/video_call_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zoom',
      theme: ZoomAppTheme.darkTheme,
      routes: {
        ZoomAppRouteNames.loginPage: (context) => const LoginPage(),
        ZoomAppRouteNames.homePage: (context) => const HomePage(),
        ZoomAppRouteNames.videoCallPage: (context) => const VideoCallPage(),
      },
      home: const LoginPage(),
    );
  }
}
