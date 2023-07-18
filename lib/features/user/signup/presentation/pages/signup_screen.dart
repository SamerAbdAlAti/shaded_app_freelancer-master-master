import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaded_app_freelancer/_core/theme.dart';
import 'package:shaded_app_freelancer/_core/widgets/build_button.dart';
import 'package:shaded_app_freelancer/_core/widgets/custom_appbar.dart';
import 'package:shaded_app_freelancer/features/user/layout/presentation/pages/layout_screen.dart';
import 'package:geolocator/geolocator.dart';

import '../../../../../_core/functions/function.dart';
import '../../../../../_core/widgets/custom_snackbar_toast_widget.dart';
import '../../../account_details/presentation/widgets/edit_form_field.dart';

class UserSignupPage extends StatefulWidget {

  @override
  State<UserSignupPage> createState() => _UserSignupPageState();
}

class _UserSignupPageState extends State<UserSignupPage> {
  Future<(double, double)> getLocation(context) async {
    await Geolocator.checkPermission();
    await Geolocator.requestPermission();
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    print('Latitude: ${position.latitude}\nLongitude: ${position.longitude}');
    return (position.latitude, position.longitude);
  }

  @override
  void initState() {
    super.initState();
    getLocation(context);
  }

  final TextEditingController fistNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(context, "تسجيل الدخول كمستخدم"),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Form(
          key: formKey,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
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
                                      color: Color.fromRGBO(178, 238, 238, 1),
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
                              backgroundColor: MaterialStatePropertyAll(appColor),
                              shape: MaterialStatePropertyAll(CircleBorder(
                                  eccentricity: 0.62,
                                  side: BorderSide(
                                      color: Color.fromRGBO(178, 238, 238, 1),
                                      width: 3)))),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 14),
                  customEditFormField(
                    controller: fistNameController,
                    label: "الإسم",
                    type: TextInputType.name,
                    labelSize: 14.0,
                    hint: "محمد",
                  ),
                  customEditFormField(
                    controller: lastNameController,
                    label: "إسم العائلة",
                    type: TextInputType.name,
                    labelSize: 14.0,
                    hint: "عبدالله",
                  ),
                  customEditFormField(
                    controller: emailController,
                    label: "البريد الالكتروني",
                    type: TextInputType.name,
                    labelSize: 14.0,
                    hint: "email@gmail.com",
                  ),
                  customEditPhoneNumber(context,
                      phoneController: phoneController),
                  customEditFormField(
                    controller: addressController,
                    label: "العنوان",
                    type: TextInputType.name,
                    labelSize: 14.0,
                    hint: "${getLocation(context).toString()}",
                  ),
                  buildButton(
                      function: () {
                        // if(formKey.currentState!.validate()){
                          successSnackBar(msg: "تم تسجيل الدخول بنجاح");
                          navAndFinish(context, UserHomeLayout());
                        // }
                      },
                      color: appColor,
                      colorName: Colors.white,
                      hight: 45.0,
                      width: 330.0,
                      name: "حفظ التعديلات"),
                  SizedBox(height: 30.0)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
