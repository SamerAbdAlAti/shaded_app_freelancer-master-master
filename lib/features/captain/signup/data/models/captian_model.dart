import 'package:equatable/equatable.dart';

import '../../../../authentication/models/driver_models/driver_model.dart';

class CaptainModel extends Equatable {
  final bool status;
  final int code;
  final String message;
  final CaptainDataModel? data;

  const  CaptainModel({
    required this.status,
    required this.code,
    required this.message,
    required this.data,
  });

  factory CaptainModel.fromJson(Map<String, dynamic> json) {
    return CaptainModel(
      status: json['status'] as bool,
      code: json['code'] as int,
      message: json['message'] as String,
      data: json['data'].isNotEmpty?CaptainDataModel.fromJson(json['data']):null,
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
class CaptainDataModel extends Equatable {
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

  const  CaptainDataModel({
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

  factory CaptainDataModel.fromJson(Map<String, dynamic> json) {
    return CaptainDataModel(
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




