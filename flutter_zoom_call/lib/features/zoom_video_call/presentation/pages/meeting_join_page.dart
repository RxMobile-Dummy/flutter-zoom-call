import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_zoom_call/core/theme/app_colors.dart';
import 'package:flutter_zoom_call/core/theme/app_text_styles.dart';
import 'package:flutter_zoom_call/features/zoom_video_call/presentation/cubits/meeting/meeting_cubit.dart';
import 'package:flutter_zoom_call/utils/constants/string_constants.dart';
import 'package:flutter_zoom_call/utils/extensions/sizedbox/sized_box_extensions.dart';
import 'package:flutter_zoom_call/utils/widgets/custom_button_widget.dart';
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
          style: ZoomAppTextStyles.infoLabelStyle,
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
                _buildTextField(
                    cubit.meetingIdController, ZoomStringConstants.roomIdText),
                _buildTextField(
                    cubit.nameController, ZoomStringConstants.roomNameText),
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
                40.verticalSpace,
                Padding(
                  padding: EdgeInsets.all(8),
                  child: CustomButtonWidget(
                      text: ZoomStringConstants.joinMeetingText,
                      onPressed: () async {
                        await cubit.createOrJoinMeeting(isNewMeeting: false);
                      }),
                ),
              ],
            );
          });
        },
      ),
    );
  }
}

Widget _buildTextField(TextEditingController controller, String hintText) {
  return SizedBox(
    height: 60,
    child: TextField(
      controller: controller,
      maxLines: 1,
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        fillColor: ZoomAppColors.secondaryBackgroundColor,
        filled: true,
        border: InputBorder.none,
        hintText: hintText,
        contentPadding: EdgeInsets.fromLTRB(16, 8, 0, 0),
      ),
    ),
  );
}
