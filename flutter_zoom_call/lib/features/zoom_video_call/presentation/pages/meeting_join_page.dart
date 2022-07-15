import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_zoom_call/core/theme/app_colors.dart';
import 'package:flutter_zoom_call/features/zoom_video_call/presentation/cubits/meeting/meeting_cubit.dart';
import 'package:flutter_zoom_call/utils/constants/string_constants.dart';
import 'package:flutter_zoom_call/utils/extensions/sizedbox/sized_box_extensions.dart';
import 'package:flutter_zoom_call/utils/widgets/custom_error_widget.dart';
import 'package:flutter_zoom_call/utils/widgets/loading_widget.dart';

import '../../../../utils/widgets/meeting_option_widget.dart';
import '../../zoom_call_injection_container.dart';

class MeetingJoinPage extends StatelessWidget {
  MeetingJoinPage({Key? key}) : super(key: key);
  final cubit = sl<MeetingCubit>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ZoomAppColors.backgroundColor,
        title: const Text(
          ZoomStringConstants.joinMeetingText,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      body: BlocBuilder<MeetingCubit, MeetingState>(
        bloc: cubit,
        builder: (context, state) {
          return state.map(init: (init) {
            return const LoadingWidget();
          }, meetingLoading: (loading) {
            return const LoadingWidget();
          }, meetingFailure: (failure) {
            return CustomErrorWidget(errorMsg: failure.failureMsg.toString());
          }, meetingSuccess: (success) {
            return Column(
              children: [
                SizedBox(
                  height: 60,
                  child: TextField(
                    controller: cubit.meetingIdController,
                    maxLines: 1,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      fillColor: ZoomAppColors.secondaryBackgroundColor,
                      filled: true,
                      border: InputBorder.none,
                      hintText: ZoomStringConstants.roomIdText,
                      contentPadding: EdgeInsets.fromLTRB(16, 8, 0, 0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                  child: TextField(
                    controller: cubit.nameController,
                    maxLines: 1,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      fillColor: ZoomAppColors.secondaryBackgroundColor,
                      filled: true,
                      border: InputBorder.none,
                      hintText: ZoomStringConstants.roomNameText,
                      contentPadding: EdgeInsets.fromLTRB(16, 8, 0, 0),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () async {
                    await cubit.joinMeeting();
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      ZoomStringConstants.joinBtnText,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                20.verticalSpace,
                MeetingOptionWidget(
                  text: ZoomStringConstants.muteAudioBtnText,
                  isMute: cubit.isAudioMuted,
                  onChange: (val) {
                    cubit.onAudioMuted(val);
                  },
                ),
                MeetingOptionWidget(
                  text: ZoomStringConstants.turnOffVideoText,
                  isMute: cubit.isVideoMuted,
                  onChange: (val) {
                    cubit.onVideoMuted(val);
                  },
                ),
              ],
            );
          });
        },
      ),
    );
  }
}
