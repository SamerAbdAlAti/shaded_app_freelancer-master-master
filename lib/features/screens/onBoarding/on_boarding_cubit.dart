import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../_core/functions/function.dart';
import '../../../_core/widgets/on_boarding_page.dart';
import '../../../features/authentication/presentation/pages/login_screen.dart';


part 'on_boarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(OnBoardingInitial());

  static OnBoardingCubit get(context) => BlocProvider.of(context);

  List<Model> model = [
    Model(
        images: "assets/images/on-boarding-1.svg",
        title: "كل شئ تحتاج تنقله أو نوصله \nصا ر بضغطه زر"),
    Model(
        images: "assets/images/on-boarding-2.svg",
        title:
        "حقوقك و منقولاتك بأمان وفر وقتك \nو جهدك و مالك مع ميزة عروض \nالأسعار التنافسية"),
    Model(
        images: "assets/images/on-boarding-3.svg",
        title: " إستثمر وقتك و مركبتك و إنظم إلينا \nاليوم تفيد و تستفيد"),
  ];

  final PageController controller = PageController(initialPage: 0);
  bool isLast = false;


  void onChanged(int){
    isLast = int == 2;
    emit(OnBoardingChanged(int));
  }

  void onPressed(context){
    isLast
        ? navTo(context, LoginPage())
        : controller.nextPage(
        duration: Duration(milliseconds: 500),
        curve: Curves.fastLinearToSlowEaseIn);
    emit(OnButtonPressed());
  }

  void onDotPressed(context, index){
    controller
        .animateToPage(index,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut);
    emit(OnDotPressed(index));
  }
}
