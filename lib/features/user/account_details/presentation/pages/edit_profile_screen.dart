import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaded_app_freelancer/_core/shared_preferenced/shared_preferenced.dart';
import 'package:shaded_app_freelancer/_core/widgets/build_button.dart';
import 'package:shaded_app_freelancer/_core/widgets/custom_snackbar_toast_widget.dart';
import 'package:shaded_app_freelancer/features/authentication/presentation/pages/login_screen.dart';
import 'package:shaded_app_freelancer/features/user/account_details/cubit/edit_user_cubit.dart';
import 'package:shaded_app_freelancer/features/user/account_details/presentation/widgets/edit_form_field.dart';

import '../../../../../_core/functions/function.dart';
import '../../../../../_core/theme.dart';

class EditUserProfile extends StatelessWidget {
  const EditUserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EditUserCubit(),
      child: BlocBuilder<EditUserCubit, EditUserState>(
        builder: (context, state) {
          final cubit = EditUserCubit.get(context);
          return Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Stack(
                            alignment: AlignmentDirectional.bottomStart,
                            children: [
                              Container(
                                decoration: ShapeDecoration(
                                    shape: CircleBorder(
                                        eccentricity: 0.62,
                                        side: BorderSide(
                                            color: Color.fromRGBO(
                                                178, 238, 238, 1),
                                            width: 6))),
                                child: CircleAvatar(
                                  radius: 50.0,
                                  child: Icon(Icons.person, size: 90.0),
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(CupertinoIcons.camera,
                                    color: Colors.white, size: 18),
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStatePropertyAll(appColor),
                                    shape: MaterialStatePropertyAll(
                                        CircleBorder(
                                            eccentricity: 0.62,
                                            side: BorderSide(
                                                color: Color.fromRGBO(
                                                    178, 238, 238, 1),
                                                width: 3)))),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 14),
                        Center(
                          child: Text(
                            "محمد عبدالله",
                            style: tajawalArabic(
                                size: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 14),
                        customEditFormField(
                          label: "الإسم",
                          type: TextInputType.name,
                          labelSize: 14.0,
                          hint: "محمد",
                        ),
                        customEditFormField(
                          label: "إسم العائلة",
                          type: TextInputType.name,
                          labelSize: 14.0,
                          hint: "عبدالله",
                        ),
                        customEditFormField(
                          label: "البريد الالكتروني",
                          type: TextInputType.name,
                          labelSize: 14.0,
                          hint: "asdsf@fgd.sd",
                        ),
                        customEditPhoneNumber(context),
                        customEditFormField(
                          label: "العنوان",
                          type: TextInputType.name,
                          labelSize: 14.0,
                          hint: "الطائف",
                        ),
                        buildButton(
                            function: () {
                              showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                        title: Text('اخطار بحذف الحساب!!'),
                                        content:
                                            Text('هل أنت متأكد من حذف حسابك؟'),
                                        actions: [
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text("لا"),
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              cubit.deleteDriver(DriverPrKeys.id).then(
                                                  (value) => navAndFinish(
                                                      context, LoginPage()));
                                            },
                                            child: Text("موافق"),
                                          )
                                        ],
                                      ));
                            },
                            color: Colors.red,
                            colorName: Colors.white,
                            hight: 45.0,
                            width: 300.0,
                            name: "حذف الحساب"),
                        SizedBox(
                          height: 10.0,
                        ),
                        buildButton(
                            function: () {
                              successSnackBar();
                              Navigator.pop(context);
                            },
                            color: appColor,
                            colorName: Colors.white,
                            hight: 45.0,
                            width: 300.0,
                            name: "حفظ التعديلات"),
                        SizedBox(
                          height: 30.0,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
