import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaded_app_freelancer/_core/functions/function.dart';
import 'package:shaded_app_freelancer/_core/widgets/custom_snackbar_toast_widget.dart';
import 'package:shaded_app_freelancer/features/user/my_services/presentation/bloc-cubit/counter_cubit.dart';
import 'package:shaded_app_freelancer/features/user/my_services/presentation/bloc-cubit/image/gallery_cubit.dart';
import 'package:shaded_app_freelancer/features/user/my_services/presentation/bloc-cubit/quick_cubit/quick_cubit.dart';
import 'package:shaded_app_freelancer/features/user/my_services/presentation/widgets/add_pic_widget.dart';
import 'package:shaded_app_freelancer/features/user/my_services/presentation/widgets/custom_check_box_widget.dart';
import 'package:shaded_app_freelancer/features/user/my_services/presentation/widgets/custom_counter_widget.dart';
import 'package:shaded_app_freelancer/features/user/my_services/presentation/widgets/paint_stepper.dart';
import 'package:shaded_app_freelancer/features/user/wait_drivers/presentation/pages/wait_drivers_screen.dart';

import '../../../../../_core/theme.dart';
import '../../../../../_core/widgets/build_button.dart';
import '../widgets/custom_service_form_field.dart';

class UserQuickOption extends StatelessWidget {
  const UserQuickOption({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<QuickCubit>(create: (context) => QuickCubit()),
        BlocProvider<GalleryCubit>(
          create: (context) => GalleryCubit(),
        ),
        BlocProvider<CounterCubit>(
          create: (context) => CounterCubit(),
        )
      ],
      child: BlocBuilder<QuickCubit, QuickState>(
        builder: (context, state) {
          QuickCubit cubit = QuickCubit.get(context);
          final counterCubit = BlocProvider.of<CounterCubit>(context);
          return SingleChildScrollView(
            child: Form(
              key: cubit.quickFormKey,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    customLongFormField(
                      controller: cubit.quickFieldController,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "أضف صورة للمنقولات",
                            style: tajawalArabic(
                                fontWeight: FontWeight.bold,
                                color: Colors.black87),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 18.0),
                            child: Row(
                              children: [
                                addImage(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    customMultipleCheckBox(context, cubit),
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0, bottom: 40.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(flex: 1, child: StepperCircles()),
                          Expanded(
                            flex: 5,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8.0, left: 30.0),
                                  child: customServiceFormField(
                                      label: "منطقة التحميل",
                                      hint: "العنوان",
                                      postIcon: Icons.location_on,
                                      controller: cubit.fromAddressController),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 40.0, left: 30.0),
                                  child: customServiceFormField(
                                      label: "منطقة التنزيل",
                                      hint: "العنوان",
                                      postIcon: Icons.location_on,
                                      controller: cubit.toAddressController),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 40.0, left: 30.0),
                                  child: customCalenderFormField(
                                    context,
                                    label: "تحديد اليوم",
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    customStaffCounterWidget(
                      value: "${counterCubit.state}",
                      increaseFunction: () => counterCubit.staffincrement(),
                      decreaseFunction: () => counterCubit.staffdecrement(),
                    ),
                    customConditionCounterWidget(
                      value: "${counterCubit.state}",
                      increaseFunction: () => counterCubit.conditionincrement(),
                      decreaseFunction: () => counterCubit.conditiondecrement()
                    ),
                    customCreateCounterWidget(
                      value: counterCubit.state,
                      increaseFunction: () =>
                          counterCubit.createincrement(),
                      decreaseFunction: () =>
                          counterCubit.createdecrement(),
                    ),
                    SizedBox(height: 5.0),
                    customSingleCheckBox(),
                    SizedBox(height: 15.0),
                    Center(
                        child: buildButton(
                            color: appColor,
                            name: "تأكيد الطلب",
                            colorName: Colors.white,
                            function: () async {
                              if (cubit.quickFormKey.currentState!.validate()) {
                                await context
                                    .read<QuickCubit>()
                                    .createRequest()
                                    .then((_) {
                                  if (state is CreateRequestSuccess) {
                                    successSnackBar();
                                    navTo(context, WaitDriverScreen());
                                  } else {
                                    errorSnackBar(msg: "أعد المحاولة مرة آخرى");
                                  }
                                }).catchError((e) => "${e.toString()}");
                              }
                            })),
                    SizedBox(height: 15.0),
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
