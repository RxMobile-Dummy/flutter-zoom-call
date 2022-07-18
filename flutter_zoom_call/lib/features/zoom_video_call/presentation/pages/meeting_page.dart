import 'package:flutter/material.dart';
import 'package:flutter_zoom_call/core/navigation/app_routes.dart';
import 'package:flutter_zoom_call/core/theme/app_text_styles.dart';
import 'package:flutter_zoom_call/features/zoom_video_call/presentation/cubits/meeting/meeting_cubit.dart';
import 'package:flutter_zoom_call/utils/constants/string_constants.dart';
import 'package:flutter_zoom_call/utils/widgets/home_meeting_button_widget.dart';

import '../../zoom_call_injection_container.dart';

class MeetingPage extends StatelessWidget {
  MeetingPage({Key? key}) : super(key: key);
  final cubit = sl<MeetingCubit>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HomeMeetingButtonWidget(
              onPressed: () {
                cubit.createOrJoinMeeting(isNewMeeting: true);
              },
              text: ZoomStringConstants.newMeetingText,
              icon: Icons.videocam,
            ),
            HomeMeetingButtonWidget(
              onPressed: () {
                Navigator.pushNamed(context, ZoomAppRouteNames.meetingJoinPage);
              },
              text: ZoomStringConstants.joinMeetingText,
              icon: Icons.add_box_rounded,
            ),
          ],
        ),
        Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Image.asset(ZoomStringConstants.appLogoPath),
            ),
            Text(
              ZoomStringConstants.meetingPageText,
              style: ZoomAppTextStyles.infoContentStyle,
            )
          ],
        )),
      ],
    );
  }
}
