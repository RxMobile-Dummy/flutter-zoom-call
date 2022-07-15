import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_call/core/navigation/app_routes.dart';
import 'package:flutter_zoom_call/features/zoom_video_call/presentation/cubits/meeting/meeting_cubit.dart';
import 'package:flutter_zoom_call/utils/widgets/home_meeting_button_widget.dart';

import '../../zoom_call_injection_container.dart';

class MeetingPage extends StatelessWidget {
  MeetingPage({Key? key}) : super(key: key);
  final cubit = sl<MeetingCubit>();

  createNewMeeting() async {
    var random = Random();
    String roomName = (random.nextInt(10000000) + 10000000).toString();
  }

  joinMeeting(BuildContext context) {
    Navigator.pushNamed(context, ZoomAppRouteNames.meetingJoinPage);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HomeMeetingButtonWidget(
              onPressed: createNewMeeting,
              text: 'New Meeting',
              icon: Icons.videocam,
            ),
            HomeMeetingButtonWidget(
              onPressed: () => joinMeeting(context),
              text: 'Join Meeting',
              icon: Icons.add_box_rounded,
            ),
            HomeMeetingButtonWidget(
              onPressed: () {},
              text: 'Schedule',
              icon: Icons.calendar_today,
            ),
            HomeMeetingButtonWidget(
              onPressed: () {},
              text: 'Share Screen',
              icon: Icons.arrow_upward_rounded,
            ),
          ],
        ),
        const Expanded(
          child: Center(
            child: Text(
              'Create/Join Meetings with just a click!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
