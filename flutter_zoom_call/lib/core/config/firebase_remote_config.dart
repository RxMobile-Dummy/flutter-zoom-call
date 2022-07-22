import 'package:firebase_remote_config/firebase_remote_config.dart';

import '../../features/zoom_video_call/zoom_call_injection_container.dart';

class ZoomRemoteConfigBase {
  static Future<FirebaseRemoteConfig> setupRemoteConfig() async {
    FirebaseRemoteConfig remoteConfig = sl<FirebaseRemoteConfig>();
    await remoteConfig.setConfigSettings(RemoteConfigSettings(
      fetchTimeout: const Duration(seconds: 10),
      minimumFetchInterval: Duration.zero, //force fetch value everytime
    ));
    await remoteConfig.fetchAndActivate();
    return remoteConfig;
  }
}
