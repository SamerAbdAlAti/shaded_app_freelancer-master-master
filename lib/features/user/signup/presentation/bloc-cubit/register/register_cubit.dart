import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';
import 'package:shaded_app_freelancer/_core/functions/function.dart';
import '../../../../../../_core/shared_preferenced/shared_preferenced.dart';
import '../../../../../authentication/controllers/auth_controller/auth_controller.dart';
import '../../../../layout/presentation/pages/layout_screen.dart';
import 'package:geolocator/geolocator.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  Future<void> register(context, phone, name) async {
    // Get the FCM token
    String? fcmToken = await FirebaseMessaging.instance.getToken();

    // Determine the device type
    String deviceType = Platform.isAndroid ? 'android' : 'ios';

    emit(Loading());
    await AuthController.registerUser(
      userType: "1",
      phone: phone,
      fcmToken: fcmToken ?? '',
      deviceType: deviceType,
      name: name,
    ).then(
      (value) {
        if (value.status) {
          if (value.data != null) {
            // SharedPrefController().saveUser(user: value.data);
            print(value.data);
            navAndFinish(context, UserHomeLayout());
            emit(Success());
          }
        } else {
          navAndFinish(context, UserHomeLayout());
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
        navAndFinish(context, UserHomeLayout());
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
