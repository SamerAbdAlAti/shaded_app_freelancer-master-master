import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaded_app_freelancer/_core/functions/function.dart';
import 'package:shaded_app_freelancer/_core/theme.dart';
import 'package:shaded_app_freelancer/features/user/layout/presentation/bloc-cubit/layout/layout_cubit.dart';
import 'package:shaded_app_freelancer/features/user/options/presentation/pages/options_layout_screen.dart';

class UserHomeLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserLayoutCubit(),
      child: BlocBuilder<UserLayoutCubit, LayoutState>(
        builder: (context, state) {
          var cubit = UserLayoutCubit.get(context);
          return Scaffold(
            body: cubit.screens[cubit.currentIndex],
            floatingActionButton: AvatarGlow(
              endRadius: 60.0,
              shape: BoxShape.circle,
              duration: Duration(milliseconds: 2000),
              animate: true,
              curve: Curves.easeOutQuad,
              glowColor: appColor,
              repeat: true,
              showTwoGlows: true,
              repeatPauseDuration: Duration(milliseconds: 100),
              child: FloatingActionButton.extended(
                onPressed: () => navTo(context, OptionLayoutPage()),
                backgroundColor: appColor,
                shape: CircleBorder(),
                elevation: 0.0,
                label: Center(child: Image.asset('assets/icons/ex-icon-app.png')),
              ),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.miniCenterDocked,
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Color.fromRGBO(250, 250, 250, 1),
              items: cubit.items,
              type: BottomNavigationBarType.fixed,
              currentIndex: cubit.currentIndex,
              onTap: (index) => cubit.changeBottomNavBar(index),
            ),
          );
        },
      ),
    );
  }
}
