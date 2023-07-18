import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaded_app_freelancer/_core/functions/function.dart';
import 'package:shaded_app_freelancer/_core/theme.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../_core/widgets/on_boarding_page.dart';
import '../../../features/authentication/presentation/pages/login_screen.dart';
import 'on_boarding_cubit.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnBoardingCubit(),
      child: BlocBuilder<OnBoardingCubit, OnBoardingState>(
        builder: (context, state) {
          OnBoardingCubit cubit = OnBoardingCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              toolbarHeight: 120,
              leadingWidth: 80,
              leading: TextButton(
                  onPressed: () => navAndFinish(context, LoginPage()),
                  child: Text(
                    "تخطي",
                    style: tajawalArabic(size: 14),
                  )),
            ),
            body: SafeArea(
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 5,
                      child: Container(
                        child: PageView.builder(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          onPageChanged: (index) => cubit.onChanged(index),
                          controller: cubit.controller,
                          itemCount: cubit.model.length,
                          physics: BouncingScrollPhysics(),
                          itemBuilder: (context, index) =>
                              buildBoardingPage(cubit.model[index]),
                        ),
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              flex: 1,
                              child: SmoothPageIndicator(
                                controller: cubit.controller,
                                count: cubit.model.length,
                                onDotClicked: (index) =>
                                    cubit.onDotPressed(context, index),
                                effect: WormEffect(
                                    activeDotColor: appColor,
                                    radius: 18,
                                    dotWidth: 12,
                                    dotHeight: 12),
                              )),
                          SizedBox(height: 10),
                          Container(
                            width: 327,
                            child: MaterialButton(
                              onPressed: () => cubit.onPressed(context),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14.0)),
                              child: Text(cubit.isLast ? "ابدأ الآن" : "التالي",
                                  style: tajawalArabic(
                                      color: Colors.white, size: 16)),
                              height: 50.0,
                              color: appColor,
                            ),
                          ),
                          SizedBox(height: 80),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
