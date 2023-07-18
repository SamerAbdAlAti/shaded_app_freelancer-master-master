import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pinput/pinput.dart';
import 'package:shaded_app_freelancer/_core/functions/function.dart';
import 'package:shaded_app_freelancer/_core/theme.dart';
import 'package:shaded_app_freelancer/_core/widgets/build_button.dart';
import 'package:shaded_app_freelancer/_core/widgets/custom_snackbar_toast_widget.dart';
import 'package:shaded_app_freelancer/features/User/layout/presentation/pages/home_screen.dart';
import 'package:shaded_app_freelancer/features/authentication/presentation/bloc/login/login_cubit.dart';
import 'package:shaded_app_freelancer/features/authentication/presentation/pages/login_screen.dart';
import 'package:shaded_app_freelancer/features/captain/layout/presentation/pages/home_screen.dart';

import '../../../../captain/layout/presentation/pages/layout_screen.dart';
import '../../../layout/presentation/pages/layout_screen.dart';

class OtpPage extends StatelessWidget {
  final String phoneNumber;
  final String otpCode;
  final String userType;

  OtpPage({
    required this.phoneNumber,
    required this.otpCode,
    required this.userType,
  });

  @override
  Widget build(BuildContext context) {
    LoginCubit loginCubit = BlocProvider.of(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 100,
        leading: IconButton(
            onPressed: () => Navigator.pop(context, LoginPage()),
            icon: Icon(
              Icons.arrow_back_ios,
              size: 18,
            )),
        actions: [],
      ),
      body: Form(
        key: loginCubit.formKey,
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/images/sms-icon.svg', fit: BoxFit.cover),
                SizedBox(
                  height: 30,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("كود التحقق", style: tajawalArabic(size: 18, fontWeight: FontWeight.bold)),
                    Text(
                      "قم بإدخال كود التحقق المرسل الى الرقم \n 966$phoneNumber+",
                      textAlign: TextAlign.center,
                      style: tajawalArabic(size: 14),
                    )
                  ],
                ),
                SizedBox(
                  height: 21,
                ),
                Pinput(
                    validator: (pin) {
                      if (pin!.isEmpty) {
                        print("Empty");
                        return 'رجاء أدخل رمز الOTP المرسلة لك';
                      } else if (pin.length != 4) {
                        print("Empty");
                        return 'يجب أن تكون الأرقام 4 كحد أقصى';
                      } else {
                        print("Non empty");
                        return null;
                      }
                    },
                    controller: loginCubit.OtpController,
                    onCompleted: (pin) {
                      loginCubit.OtpController.text == pin;
                      print(pin);
                      print(otpCode);
                      if (loginCubit.OtpController.text.toString().isNotEmpty) {
                        if (pin == otpCode && userType == '1') {
                          navTo(context, UserHomeLayout());
                        } else if (pin == otpCode && userType == '2') {
                          navTo(context, CaptainHomeLayout());
                        } else {
                          errorSnackBar(msg: 'الرمز الذي أدخلته خاظئ حاول مرة اخرى');
                          loginCubit.OtpController.text = '';
                        }
                      }
                      print("otp is: ${loginCubit.OtpController.toString()}");
                    },
                    keyboardType: TextInputType.number,
                    defaultPinTheme: PinTheme(
                      width: 56,
                      height: 56,
                      textStyle: tajawalArabic(color: Colors.black87, size: 30),
                      decoration: BoxDecoration(
                        border: Border.all(color: secondaryAppColor),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    )),
                SizedBox(
                  height: 25,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 18.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("لم أستلم كود التحقق؟",
                            locale: arabicLocale,
                            style: tajawalArabic(color: Colors.black87, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.start),
                        TextButton(
                            onPressed: () {},
                            child: Text("يرجى إعادة الإرسال",
                                style: tajawalArabic(color: secondaryAppColor), textAlign: TextAlign.start, locale: arabicLocale)),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                Center(
                  child: buildButton(
                      function: () {
                        if (loginCubit.OtpController.text.toString().isNotEmpty) {
                          // if (OtpController == otp && userType == '1') {
                          //   navTo(context, UserHomePage());
                          // } else if (OtpController == otp && userType == '2') {
                          //   navTo(context, CaptainHomePage());
                          // }
                        }
                      },
                      name: "تحقق",
                      colorName: Colors.white,
                      color: appColor),
                ),
                SizedBox(
                  height: 100,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
