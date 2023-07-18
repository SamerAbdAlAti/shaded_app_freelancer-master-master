import 'package:equatable/equatable.dart';

import '../../../captain/signup/data/models/captian_model.dart';
import '../../../user/signup/data/models/user_register_model.dart';

class LoginUserModel extends Equatable {
  final bool status;
  final int code;
  final String message;
  final UserDataModel? data;

  const LoginUserModel({
    required this.status,
    required this.code,
    required this.message,
    required this.data,
  });

  factory LoginUserModel.fromJson(Map<String, dynamic> json) {
    return LoginUserModel(
      status: json['status'] as bool,
      code: json['code'] as int,
      message: json['message'] as String,
      data: json['data'].isNotEmpty ? UserDataModel.fromJson(json['data']) : null,
    );
  }

  @override
  List<Object?> get props {
    return [
      status,
      code,
      message,
      data,
    ];
  }
}

class UserDataModel extends Equatable {
  final int id;
  final dynamic name;
  final String mobile;
  final dynamic email;
  final String token;
  final String fcmtoken;
  final String devicetype;
  final String code;
  final dynamic lat;
  final dynamic long;
  final String photo;
  final dynamic provider;
  final UserTypeModel usertype;
  final dynamic driver;
  final StatusModel status;

  const UserDataModel({
    required this.id,
    required this.name,
    required this.mobile,
    required this.email,
    required this.token,
    required this.fcmtoken,
    required this.devicetype,
    required this.code,
    required this.lat,
    required this.long,
    required this.photo,
    required this.provider,
    required this.usertype,
    required this.driver,
    required this.status,
  });

  factory UserDataModel.fromJson(Map<String, dynamic> json) {
    return UserDataModel(
      id: json['id'] as int,
      name: json['name'] as dynamic,
      mobile: json['mobile'] as String,
      email: json['email'] as dynamic,
      token: json['token'] as String,
      fcmtoken: json['fcmToken'] as String,
      devicetype: json['deviceType'] as String,
      code: json['code'] as String,
      lat: json['lat'] as dynamic,
      long: json['long'] as dynamic,
      photo: json['photo'] as String,
      provider: json['provider'] as dynamic,
      usertype: UserTypeModel.fromJson(json['userType']),
      driver: json['driver'] as dynamic,
      status: StatusModel.fromJson(json['status']),
    );
  }

  @override
  List<Object?> get props {
    return [
      id,
      name,
      mobile,
      email,
      token,
      fcmtoken,
      devicetype,
      code,
      lat,
      long,
      photo,
      provider,
      usertype,
      driver,
      status,
    ];
  }
}

class UserTypeModel extends Equatable {
  final String id;
  final String name;

  const UserTypeModel({
    required this.id,
    required this.name,
  });

  factory UserTypeModel.fromJson(Map<String, dynamic> json) {
    return UserTypeModel(
      id: json['id'] as String,
      name: json['name'] as String,
    );
  }

  @override
  List<Object?> get props {
    return [
      id,
      name,
    ];
  }
}
