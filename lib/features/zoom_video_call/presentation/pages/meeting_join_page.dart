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
import 'package:flutter_zoom_call/utils/widgets/snackbar_widget.dart';

import '../../../../utils/widgets/meeting_option_widget.dart';
import '../../zoom_call_injection_container.dart';

class MeetingJoinPage extends StatelessWidget {
  MeetingJoinPage({Key? key}) : super(key: key);
  final cubit = sl<MeetingCubit>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ZoomAppColors.backgroundColor,
        title: const Text(
          ZoomStringConstants.joinMeetingText,
          style: ZoomAppTextStyles.infoLabelStyle,
        ),
        centerTitle: true,
      ),
      body: _meetingJoinPageBody(cubit),
    );
  }
}

Widget _meetingJoinPageBody(MeetingCubit cubit) {
  return Column(
    children: [
      _buildTextField(
          isNumberType: true,
          hintText: ZoomStringConstants.roomIdText,
          controller: cubit.meetingIdController),
      _buildTextField(
          isNumberType: false,
          hintText: ZoomStringConstants.roomNameText,
          controller: cubit.nameController),
      20.verticalSpace,
      BlocConsumer<MeetingCubit, MeetingState>(
        bloc: cubit,
        builder: (_, state) {
          return Column(
            children: [
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
        },
        listener: (context, state) {
          if (state is MeetingSuccess) {
            if (state.errorMsg != null) {
              showSnackBar(context, state.errorMsg.toString());
            }
          }
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
}

Widget _buildTextField(
    {required TextEditingController controller,
    required String hintText,
    required bool isNumberType}) {
  return SizedBox(
    height: 60,
    child: TextField(
      controller: controller,
      maxLines: 1,
      textAlign: TextAlign.center,
      keyboardType: isNumberType ? TextInputType.number : TextInputType.name,
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
