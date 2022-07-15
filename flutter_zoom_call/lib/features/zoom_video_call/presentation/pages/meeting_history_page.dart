import 'package:flutter/material.dart';
import 'package:flutter_zoom_call/features/zoom_video_call/presentation/cubits/meeting/meeting_cubit.dart';
import 'package:flutter_zoom_call/utils/widgets/custom_error_widget.dart';
import 'package:flutter_zoom_call/utils/widgets/loading_widget.dart';
import 'package:intl/intl.dart';

import '../../zoom_call_injection_container.dart';

class MeetingHistoryPage extends StatelessWidget {
  MeetingHistoryPage({Key? key}) : super(key: key);
  final cubit = sl<MeetingCubit>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: cubit.getMeetingHistory(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: LoadingWidget(),
          );
        }

        return snapshot.hasData
            ? ListView.builder(
                itemCount: (snapshot.data! as dynamic).docs.length,
                itemBuilder: (context, index) => ListTile(
                  title: Text(
                    'Room Name: ${(snapshot.data! as dynamic).docs[index]['meetingName'] ?? ''}',
                  ),
                  subtitle: Text(
                    'Joined on ${DateFormat.yMMMd().format((snapshot.data! as dynamic).docs[index]['createdAt'].toDate()) ?? ''}',
                  ),
                ),
              )
            : const CustomErrorWidget(errorMsg: 'No History.');
      },
    );
  }
}
