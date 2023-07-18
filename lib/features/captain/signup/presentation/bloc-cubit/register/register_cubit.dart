import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:shaded_app_freelancer/_core/functions/function.dart';
import '../../../../../../_core/shared_preferenced/shared_preferenced.dart';
import '../../../../../authentication/controllers/auth_controller/auth_controller.dart';
import '../../../../layout/presentation/pages/layout_screen.dart';

part 'register_state.dart';

class CaptainRegisterCubit extends Cubit<CaptainRegisterState> {
  CaptainRegisterCubit() : super(RegisterInitial());
  static CaptainRegisterCubit get(context) => BlocProvider.of(context, listen: false);
  List<String>? listOfCategory = ["فرد", "مؤسسة", "شركة"];
  List<String>? listOfCountry = ["مكة المكرمة", "المدينة المنورة", "الرياض"];
  List<String>? listOfNear = ["المنامة", "الدمام", "جدة"];
  String? selectedCategory;
  String? selectedCountry;
  String? selectedNear;
  int currentStep = 0;
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController visaCard = TextEditingController();
  TextEditingController phone = TextEditingController();
  final firstFormKey = GlobalKey<FormState>();
  final secondFormKey = GlobalKey<FormState>();
  final thirdFormKey = GlobalKey<FormState>();

  Future<void> register(context, phone, name) async {
    // Get the FCM token
    String? fcmToken = await FirebaseMessaging.instance.getToken();

    // Determine the device type
    String deviceType = Platform.isAndroid ? 'android' : 'ios';

    emit(Loading());
    await AuthController.registerCaptain(
      userType: "1",
      phone: phone,
      fcmToken: fcmToken ?? '',
      deviceType: deviceType,
      name: name,
    ).then(
      (value) {
        if (value.status) {
          if (value.data != null) {
            SharedPrefController().saveDriver(user: value.data!);
            print(value.data);
            navAndFinish(context, CaptainHomeLayout());
            emit(Success());
          }
        } else {
          navAndFinish(context, CaptainHomeLayout());
          context.showFailDialog(
            title: 'فشل التسجيل',
            content: value.message,
          );
          print(value.data);
          emit(Error("فشل , يرجى المحاولة"));
        }
      },
    ).catchError(
      (error) {
        navAndFinish(context, CaptainHomeLayout());
        print(error.data.toString());
        context.showFailDialog(
            title: 'فشل تسجيل الذخول', content: error.toString());
        emit(Error("فشل , يرجى المحاولة"));
      },
    );
  }

  Future<void> getLocation(context) async {
    await Geolocator.checkPermission();
    await Geolocator.requestPermission();
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    print('Latitude: ${position.latitude}\nLongitude: ${position.longitude}');
  }
}
