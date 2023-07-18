import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaded_app_freelancer/features/captain/layout/presentation/bloc-cubit/layout/layout_cubit.dart';

class CaptainHomeLayout extends StatelessWidget {
  const CaptainHomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CaptainLayoutCubit(),
      child: BlocBuilder<CaptainLayoutCubit, CaptainLayoutState>(
        builder: (context, state) {
          var cubit = CaptainLayoutCubit.get(context);
          return Scaffold(
            body: cubit.screens[cubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              items: cubit.items,
              currentIndex: cubit.currentIndex,
              onTap: (index) => cubit.changeBottomNavBar(index),
            ),
          );
        },
      ),
    );
  }
}
