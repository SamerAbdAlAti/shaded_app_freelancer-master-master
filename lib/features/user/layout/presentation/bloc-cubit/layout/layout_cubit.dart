import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:shaded_app_freelancer/features/User/layout/presentation/pages/home_screen.dart';
import 'package:flutter/material.dart';

import '../../../../account_details/presentation/pages/my_profile_screen.dart';
import '../../../../chat/presentation/pages/messages_screen.dart';
import '../../../../order/presentation/pages/orders_screen.dart';

part 'layout_state.dart';

class UserLayoutCubit extends Cubit<LayoutState> {
  UserLayoutCubit() : super(LayoutInitial());

  static UserLayoutCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  List<Widget> screens = [
    UserHomePage(),
    UserOrderPage(),
    UserMessagePage(),
    UserMyProfilePage()
  ];
  List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
        icon: Icon(Icons.home_filled), label: "الرئيسية"),
    BottomNavigationBarItem(
        icon: Icon(Icons.shopping_bag_rounded), label: "الطلبات"),
    BottomNavigationBarItem(
        icon: Icon(Icons.message), label: "الرسائل"),
    BottomNavigationBarItem(
        icon: Icon(Icons.account_circle), label: "بروفايلي")
  ];
  void changeBottomNavBar(index){
    currentIndex = index;
    emit(ChangeBottomNavigationBarState(index));
  }
}
