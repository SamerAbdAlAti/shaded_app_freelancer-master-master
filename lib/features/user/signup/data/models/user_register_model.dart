import 'package:equatable/equatable.dart';

class UserRegister extends Equatable {
  final bool status;
  final int code;
  final String message;
  final UserRegisterDataModel data;

  const  UserRegister({
    required this.status,
    required this.code,
    required this.message,
    required this.data,
  });

  factory UserRegister.fromJson(Map<String, dynamic> json) {
    return UserRegister(
      status: json['status'] as bool,
      code: json['code'] as int,
      message: json['message'] as String,
      data: UserRegisterDataModel.fromJson(json['data']),
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
class UserRegisterDataModel extends Equatable {
  final int id;
  final dynamic name;
  final String mobile;
  final dynamic email;
  final String token;
  final String fcmtoken;
  final String devicetype;
  final int code;
  final dynamic lat;
  final dynamic long;
  final String photo;
  final dynamic provider;
  final UserTypeModel usertype;
  final dynamic driver;
  final StatusModel status;

  const  UserRegisterDataModel({
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

  factory UserRegisterDataModel.fromJson(Map<String, dynamic> json) {
    return UserRegisterDataModel(
      id: json['id'] as int,
      name: json['name'] as dynamic,
      mobile: json['mobile'] as String,
      email: json['email'] as dynamic,
      token: json['token'] as String,
      fcmtoken: json['fcmToken'] as String,
      devicetype: json['deviceType'] as String,
      code: json['code'] as int,
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

  const  UserTypeModel({
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

class StatusModel extends Equatable {
  final int id;
  final String name;

  const  StatusModel({
    required this.id,
    required this.name,
  });

  factory StatusModel.fromJson(Map<String, dynamic> json) {
    return StatusModel(
      id: json['id'] as int,
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


