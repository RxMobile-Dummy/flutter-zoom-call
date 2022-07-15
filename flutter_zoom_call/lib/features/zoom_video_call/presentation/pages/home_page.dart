import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_zoom_call/core/theme/app_colors.dart';
import 'package:flutter_zoom_call/utils/widgets/bottom_nav_bar/cubit/bottom_navbar_cubit.dart';

import '../../../../utils/widgets/bottom_nav_bar/bottom_nav_bar_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final cubit = BottomNavbarCubit();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ZoomAppColors.backgroundColor,
        elevation: 0,
        title: const Text('Meet & Chat'),
        centerTitle: true,
      ),
      body: BlocBuilder<BottomNavbarCubit, BottomNavBarState>(
          bloc: cubit,
          builder: (context, state) {
            return bottomBarPageList[cubit.currentIndex];
          }),
      bottomNavigationBar: BottomNavBarWidget(navBarCubit: cubit),
    );
  }
}
