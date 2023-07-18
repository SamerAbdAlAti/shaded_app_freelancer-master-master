import 'package:equatable/equatable.dart';

class Response extends Equatable {
  final bool status;
  final int code;
  final String message;
  final Data data;

  Response({
    required this.status,
    required this.code,
    required this.message,
    required this.data,
  });

  factory Response.fromJson(Map<String, dynamic> json) {
    return Response(
      status: json['status'],
      code: json['code'],
      message: json['message'],
      data: Data.fromJson(json['data']),
    );
  }

  @override
  List<Object?> get props => [status, code, message, data];
}

class Data extends Equatable {
  final int id;
  final bool isRate;
  final int rate;
  final List<RequestImage> requestImage;
  final User user;
  final dynamic driver;
  final String description;
  final String startLatitude;
  final String startLongitude;
  final String endLatitude;
  final String endLongitude;
  final String date;
  final String commission;
  final String numberWorker;
  final String technicianRefrigeration;
  final String reassembleAssemble;
  final dynamic completedAt;
  final dynamic cancelAt;
  final dynamic acceptAt;
  final dynamic arriveAt;
  final dynamic reason;
  final String distance;
  final dynamic accessTime;
  final dynamic startAt;
  final dynamic endAt;
  final Status status;
  final List<dynamic> driversRequest;

  Data({
    required this.id,
    required this.isRate,
    required this.rate,
    required this.requestImage,
    required this.user,
    required this.driver,
    required this.description,
    required this.startLatitude,
    required this.startLongitude,
    required this.endLatitude,
    required this.endLongitude,
    required this.date,
    required this.commission,
    required this.numberWorker,
    required this.technicianRefrigeration,
    required this.reassembleAssemble,
    required this.completedAt,
    required this.cancelAt,
    required this.acceptAt,
    required this.arriveAt,
    required this.reason,
    required this.distance,
    required this.accessTime,
    required this.startAt,
    required this.endAt,
    required this.status,
    required this.driversRequest,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      id: json['id'],
      isRate: json['isRate'],
      rate: json['rate'],
      requestImage: List<RequestImage>.from(
        json['requestImage'].map((x) => RequestImage.fromJson(x)),
      ),
      user: User.fromJson(json['user']),
      driver: json['driver'],
      description: json['description'],
      startLatitude: json['startLatitude'],
      startLongitude: json['startLongitude'],
      endLatitude: json['endLatitude'],
      endLongitude: json['endLongitude'],
      date: json['date'],
      commission: json['commission'],
      numberWorker: json['numberWorker'],
      technicianRefrigeration: json['technicianRefrigeration'],
      reassembleAssemble: json['reassembleAssemble'],
      completedAt: json['completedAt'],
      cancelAt: json['cancelAt'],
      acceptAt: json['acceptAt'],
      arriveAt: json['arriveAt'],
      reason: json['reason'],
      distance: json['distance'],
      accessTime: json['accessTime'],
      startAt: json['startAt'],
      endAt: json['endAt'],
      status: Status.fromJson(json['status']),
      driversRequest: List<dynamic>.from(json['driversRequest'].map((x) => x)),
    );
  }

  @override
  List<Object?> get props => [
    id,
    isRate,
    rate,
    requestImage,
    user,
    driver,
    description,
    startLatitude,
    startLongitude,
    endLatitude,
    endLongitude,
    date,
    commission,
    numberWorker,
    technicianRefrigeration,
    reassembleAssemble,
    completedAt,
    cancelAt,
    acceptAt,
    arriveAt,
    reason,
    distance,
    accessTime,
    startAt,
    endAt,
    status,
    driversRequest,
  ];
}

class RequestImage extends Equatable {
  final int id;
  final Photo photo;

  RequestImage({
    required this.id,
    required this.photo,
  });

  factory RequestImage.fromJson(Map<String, dynamic> json) {
    return RequestImage(
      id: json['id'],
      photo: Photo.fromJson(json['photo']),
    );
  }

  @override
  List<Object?> get props => [id, photo];
}

class Photo extends Equatable {
  final int id;
  final String name;
  final String url;

  Photo({
    required this.id,
    required this.name,
    required this.url,
  });

  factory Photo.fromJson(Map<String, dynamic> json) {
    return Photo(
      id: json['id'],
      name: json['name'],
      url: json['url'],
    );
  }

  @override
  List<Object?> get props => [id, name, url];
}

class User extends Equatable {
  final int id;
  final int rate;
  final String mobile;
  final String? firstName;
  final String? lastName;
  final String code;
  final String? lat;
  final String? long;
  final String? location;
  final String photo;
  final UserType userType;
  final Status status;

  User({
    required this.id,
    required this.rate,
    required this.mobile,
    this.firstName,
    this.lastName,
    required this.code,
    this.lat,
    this.long,
    this.location,
    required this.photo,
    required this.userType,
    required this.status,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      rate: json['rate'],
      mobile: json['mobile'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      code: json['code'],
      lat: json['lat'],
      long: json['long'],
      location: json['location'],
      photo: json['photo'],
      userType: UserType.fromJson(json['userType']),
      status: Status.fromJson(json['status']),
    );
  }

  @override
  List<Object?> get props => [
    id,
    rate,
    mobile,
    firstName,
    lastName,
    code,
    lat,
    long,
    location,
    photo,
    userType,
    status,
  ];
}

class UserType extends Equatable {
  final String id;
  final String name;

  UserType({
    required this.id,
    required this.name,
  });

  factory UserType.fromJson(Map<String, dynamic> json) {
    return UserType(
      id: json['id'],
      name: json['name'],
    );
  }

  @override
  List<Object?> get props => [id, name];
}

class Status extends Equatable {
  final int id;
  final String name;

  Status({
    required this.id,
    required this.name,
  });

  factory Status.fromJson(Map<String, dynamic> json) {
    return Status(
      id: json['id'],
      name: json['name'],
    );
  }

  @override
  List<Object?> get props => [id, name];
}
