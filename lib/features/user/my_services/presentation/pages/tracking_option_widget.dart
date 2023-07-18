import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaded_app_freelancer/_core/functions/function.dart';
import 'package:shaded_app_freelancer/features/user/my_services/presentation/bloc-cubit/image/gallery_cubit.dart';
import 'package:shaded_app_freelancer/features/user/my_services/presentation/bloc-cubit/quick_cubit/quick_cubit.dart';
import 'package:shaded_app_freelancer/features/user/my_services/presentation/widgets/add_pic_widget.dart';
import 'package:shaded_app_freelancer/features/user/my_services/presentation/widgets/custom_check_box_widget.dart';
import 'package:shaded_app_freelancer/features/user/my_services/presentation/widgets/custom_counter_widget.dart';
import 'package:shaded_app_freelancer/features/user/my_services/presentation/widgets/paint_stepper.dart';

import '../../../../../_core/theme.dart';
import '../../../../../_core/widgets/build_button.dart';
import '../bloc-cubit/track_cubit/track_cubit.dart';
import '../widgets/custom_service_form_field.dart';

class UserTrackOption extends StatelessWidget {
  const UserTrackOption({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<TrackCubit>(create: (context) => TrackCubit()),
        BlocProvider<GalleryCubit>(
          create: (context) => GalleryCubit(),
        ),
      ],
      child: BlocBuilder<TrackCubit, TrackState>(
        builder: (context, state) {
          TrackCubit cubit = TrackCubit.get(context);
          return SingleChildScrollView(
            child: Form(
              key: cubit.trackFormKey,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    customLongFormField(
                        controller: cubit.trackFieldController,
                        validate: (value) {
                          if (value.toString().isEmpty) {
                            return "يرجى ملء هذا الحقل الفارغ";
                          }
                        }),
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
                      value: "${0}",
                      increaseFunction: () => cubit.increaseTrackStaff(0),
                      decreaseFunction: () => cubit.decreaseTrackStaff(0),
                    ),
                    customConditionCounterWidget(
                      value: "${0}",
                      increaseFunction: () => cubit.decreaseTrackCondition(0),
                      decreaseFunction: () => cubit.decreaseTrackCondition(0),
                    ),
                    customCreateCounterWidget(
                      value: cubit.createIndex,
                      increaseFunction: () =>
                          cubit.increaseTrackCreate(cubit.createIndex),
                      decreaseFunction: () =>
                          cubit.decreaseTrackCreate(cubit.createIndex),
                    ),
                    SizedBox(height: 5.0),
                    customSingleCheckBox(),
                    SizedBox(height: 15.0),
                    Center(
                        child: buildButton(
                            color: appColor,
                            name: "تأكيد الطلب",
                            colorName: Colors.white,
                            function: () {
                              // if (cubit.quickFormKey.currentState.) {
                              //
                              // }
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
