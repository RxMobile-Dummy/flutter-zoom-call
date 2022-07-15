import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_zoom_call/core/theme/app_colors.dart';
import 'package:flutter_zoom_call/features/zoom_video_call/presentation/pages/account_page.dart';
import 'package:flutter_zoom_call/features/zoom_video_call/presentation/pages/meeting_history_page.dart';
import 'package:flutter_zoom_call/utils/widgets/bottom_nav_bar/cubit/bottom_navbar_cubit.dart';

import '../../../features/zoom_video_call/presentation/pages/meeting_page.dart';

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({Key? key, required this.navBarCubit})
      : super(key: key);
  final BottomNavbarCubit navBarCubit;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavbarCubit, BottomNavBarState>(
        bloc: navBarCubit,
        builder: (context, state) {
          return BottomNavigationBar(
            backgroundColor: ZoomAppColors.footerColor,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            onTap: (index) {
              navBarCubit.onPageChanged(index);
            },
            currentIndex: navBarCubit.currentIndex,
            type: BottomNavigationBarType.fixed,
            unselectedFontSize: 14,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.comment_bank,
                ),
                label: 'Meet & Chat',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.lock_clock,
                ),
                label: 'Meetings',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                ),
                label: 'Account',
              ),
            ],
          );
        });
  }
}

List<Widget> bottomBarPageList = [
  MeetingPage(),
  MeetingHistoryPage(),
  AccountPage(),
];
