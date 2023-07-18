import 'package:equatable/equatable.dart';

class DriverModel extends Equatable {
  final bool status;
  final int code;
  final String message;
  final DriverDataModel data;

  const DriverModel({
    required this.status,
    required this.code,
    required this.message,
    required this.data,
  });

  factory DriverModel.fromJson(Map<String, dynamic> json) {
    return DriverModel(
      status: json['status'] as bool,
      code: json['code'] as int,
      message: json['message'] as String,
      data: DriverDataModel.fromJson(json['data']),
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

class DriverDataModel extends Equatable {
  final int id;
  final String name;
  final String mobile;
  final String email;
  final String token;
  final String fcmToken;
  final String deviceType;
  final String code;
  final dynamic lat;
  final dynamic long;
  final String photo;
  final dynamic provider;
  final UserTypeModelInDriverDataModel usertype;
  final DriverModel driver;
  final StatusModel status;

  const DriverDataModel({
    required this.id,
    required this.name,
    required this.mobile,
    required this.email,
    required this.token,
    required this.fcmToken,
    required this.deviceType,
    required this.code,
    required this.lat,
    required this.long,
    required this.photo,
    required this.provider,
    required this.usertype,
    required this.driver,
    required this.status,
  });

  factory DriverDataModel.fromJson(Map<String, dynamic> json) {
    return DriverDataModel(
      id: json['id'] as int,
      name: json['name'] as String,
      mobile: json['mobile'] as String,
      email: json['email'] as String,
      token: json['token'] as String,
      fcmToken: json['fcmToken'] as String,
      deviceType: json['deviceType'] as String,
      code: json['code'] as String,
      lat: json['lat'] as dynamic,
      long: json['long'] as dynamic,
      photo: json['photo'] as String,
      provider: json['provider'] as dynamic,
      usertype: UserTypeModelInDriverDataModel.fromJson(json['userType']),
      driver: DriverModel.fromJson(json['driver']),
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
      fcmToken,
      deviceType,
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

class UserTypeModelInDriverDataModel extends Equatable {
  final String id;
  final String name;

  const UserTypeModelInDriverDataModel({
    required this.id,
    required this.name,
  });

  factory UserTypeModelInDriverDataModel.fromJson(Map<String, dynamic> json) {
    return UserTypeModelInDriverDataModel(
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

class DriverDetailsModel extends Equatable {
  final int id;
  final double ratereview;
  final int countcomplete;
  final int countreject;
  final int countpending;
  final int countprogress;
  final String firstname;
  final dynamic lastname;
  final String mobile;
  final UsersForDriverModel users;
  final ServiceModel service;
  final CountryModel country;
  final CityModel city;
  final PersonImageModel personimage;
  final IdPhotoModel idphoto;
  final CartPhotoModel cartphoto;
  final CartFormModel cartform;
  final InsurancePhotoModel insurancephoto;
  final dynamic vehicleauthorization;
  final StatusModel status;
  final dynamic reason;

  const DriverDetailsModel({
    required this.id,
    required this.ratereview,
    required this.countcomplete,
    required this.countreject,
    required this.countpending,
    required this.countprogress,
    required this.firstname,
    required this.lastname,
    required this.mobile,
    required this.users,
    required this.service,
    required this.country,
    required this.city,
    required this.personimage,
    required this.idphoto,
    required this.cartphoto,
    required this.cartform,
    required this.insurancephoto,
    required this.vehicleauthorization,
    required this.status,
    required this.reason,
  });

  factory DriverDetailsModel.fromJson(Map<String, dynamic> json) {
    return DriverDetailsModel(
      id: json['id'] as int,
      ratereview: json['rateReview'] as double,
      countcomplete: json['countComplete'] as int,
      countreject: json['countReject'] as int,
      countpending: json['countPending'] as int,
      countprogress: json['countProgress'] as int,
      firstname: json['firstName'] as String,
      lastname: json['lastName'] as dynamic,
      mobile: json['mobile'] as String,
      users: UsersForDriverModel.fromJson(json['users']),
      service: ServiceModel.fromJson(json['service']),
      country: CountryModel.fromJson(json['country']),
      city: CityModel.fromJson(json['city']),
      personimage: PersonImageModel.fromJson(json['personImage']),
      idphoto: IdPhotoModel.fromJson(json['IdPhoto']),
      cartphoto: CartPhotoModel.fromJson(json['cartPhoto']),
      cartform: CartFormModel.fromJson(json['cartForm']),
      insurancephoto: InsurancePhotoModel.fromJson(json['insurancePhoto']),
      vehicleauthorization: json['vehicleAuthorization'] as dynamic,
      status: StatusModel.fromJson(json['status']),
      reason: json['reason'] as dynamic,
    );
  }

  @override
  List<Object?> get props {
    return [
      id,
      ratereview,
      countcomplete,
      countreject,
      countpending,
      countprogress,
      firstname,
      lastname,
      mobile,
      users,
      service,
      country,
      city,
      personimage,
      idphoto,
      cartphoto,
      cartform,
      insurancephoto,
      vehicleauthorization,
      status,
      reason,
    ];
  }
}

class UsersForDriverModel extends Equatable {
  final int id;
  final int rate;
  final String mobile;
  final String firstname;
  final String lastname;
  final String code;
  final dynamic lat;
  final dynamic long;
  final String location;
  final String photo;
  final UserTypeModel usertype;
  final StatusInUsersForDriverModel status;

  const UsersForDriverModel({
    required this.id,
    required this.rate,
    required this.mobile,
    required this.firstname,
    required this.lastname,
    required this.code,
    required this.lat,
    required this.long,
    required this.location,
    required this.photo,
    required this.usertype,
    required this.status,
  });

  factory UsersForDriverModel.fromJson(Map<String, dynamic> json) {
    return UsersForDriverModel(
      id: json['id'] as int,
      rate: json['rate'] as int,
      mobile: json['mobile'] as String,
      firstname: json['firstName'] as String,
      lastname: json['lastName'] as String,
      code: json['code'] as String,
      lat: json['lat'] as dynamic,
      long: json['long'] as dynamic,
      location: json['location'] as String,
      photo: json['photo'] as String,
      usertype: UserTypeModel.fromJson(json['userType']),
      status: StatusInUsersForDriverModel.fromJson(json['status']),
    );
  }

  @override
  List<Object?> get props {
    return [
      id,
      rate,
      mobile,
      firstname,
      lastname,
      code,
      lat,
      long,
      location,
      photo,
      usertype,
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

class StatusModel extends Equatable {
  final int id;
  final String name;

  const StatusModel({
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

class ServiceModel extends Equatable {
  final int id;
  final String name;
  final List<ServiceImagesModel> serviceImagesList;

  const ServiceModel({
    required this.id,
    required this.name,
    required this.serviceImagesList,
  });

  factory ServiceModel.fromJson(Map<String, dynamic> json) {
    return ServiceModel(
      id: json['id'] as int,
      name: json['name'] as String,
      serviceImagesList: List.from(
          json['serviceImages'].map((e) => ServiceImagesModel.fromJson(e))),
    );
  }

  @override
  List<Object?> get props {
    return [
      id,
      name,
      serviceImagesList,
    ];
  }
}

class ServiceImagesModel extends Equatable {
  final int id;
  final PhotoModel photo;

  const ServiceImagesModel({
    required this.id,
    required this.photo,
  });

  factory ServiceImagesModel.fromJson(Map<String, dynamic> json) {
    return ServiceImagesModel(
      id: json['id'] as int,
      photo: PhotoModel.fromJson(json['photo']),
    );
  }

  @override
  List<Object?> get props {
    return [
      id,
      photo,
    ];
  }
}

class PhotoModel extends Equatable {
  final int id;
  final String name;
  final String url;

  const PhotoModel({
    required this.id,
    required this.name,
    required this.url,
  });

  factory PhotoModel.fromJson(Map<String, dynamic> json) {
    return PhotoModel(
      id: json['id'] as int,
      name: json['name'] as String,
      url: json['url'] as String,
    );
  }

  @override
  List<Object?> get props {
    return [
      id,
      name,
      url,
    ];
  }
}

class CountryModel extends Equatable {
  final int id;
  final String name;
  final String postcode;
  final String photo;

  const CountryModel({
    required this.id,
    required this.name,
    required this.postcode,
    required this.photo,
  });

  factory CountryModel.fromJson(Map<String, dynamic> json) {
    return CountryModel(
      id: json['id'] as int,
      name: json['name'] as String,
      postcode: json['postCode'] as String,
      photo: json['photo'] as String,
    );
  }

  @override
  List<Object?> get props {
    return [
      id,
      name,
      postcode,
      photo,
    ];
  }
}

class CityModel extends Equatable {
  final int id;
  final String name;
  final dynamic country;

  const CityModel({
    required this.id,
    required this.name,
    required this.country,
  });

  factory CityModel.fromJson(Map<String, dynamic> json) {
    return CityModel(
      id: json['id'] as int,
      name: json['name'] as String,
      country: json['country'] as dynamic,
    );
  }

  @override
  List<Object?> get props {
    return [
      id,
      name,
      country,
    ];
  }
}

class PersonImageModel extends Equatable {
  final int id;
  final String name;
  final String url;

  const PersonImageModel({
    required this.id,
    required this.name,
    required this.url,
  });

  factory PersonImageModel.fromJson(Map<String, dynamic> json) {
    return PersonImageModel(
      id: json['id'] as int,
      name: json['name'] as String,
      url: json['url'] as String,
    );
  }

  @override
  List<Object?> get props {
    return [
      id,
      name,
      url,
    ];
  }
}

class IdPhotoModel extends Equatable {
  final int id;
  final String name;
  final String url;

  const IdPhotoModel({
    required this.id,
    required this.name,
    required this.url,
  });

  factory IdPhotoModel.fromJson(Map<String, dynamic> json) {
    return IdPhotoModel(
      id: json['id'] as int,
      name: json['name'] as String,
      url: json['url'] as String,
    );
  }

  @override
  List<Object?> get props {
    return [
      id,
      name,
      url,
    ];
  }
}

class CartPhotoModel extends Equatable {
  final int id;
  final String name;
  final String url;

  const CartPhotoModel({
    required this.id,
    required this.name,
    required this.url,
  });

  factory CartPhotoModel.fromJson(Map<String, dynamic> json) {
    return CartPhotoModel(
      id: json['id'] as int,
      name: json['name'] as String,
      url: json['url'] as String,
    );
  }

  @override
  List<Object?> get props {
    return [
      id,
      name,
      url,
    ];
  }
}

class CartFormModel extends Equatable {
  final int id;
  final String name;
  final String url;

  const CartFormModel({
    required this.id,
    required this.name,
    required this.url,
  });

  factory CartFormModel.fromJson(Map<String, dynamic> json) {
    return CartFormModel(
      id: json['id'] as int,
      name: json['name'] as String,
      url: json['url'] as String,
    );
  }

  @override
  List<Object?> get props {
    return [
      id,
      name,
      url,
    ];
  }
}

class InsurancePhotoModel extends Equatable {
  final int id;
  final String name;
  final String url;

  const InsurancePhotoModel({
    required this.id,
    required this.name,
    required this.url,
  });

  factory InsurancePhotoModel.fromJson(Map<String, dynamic> json) {
    return InsurancePhotoModel(
      id: json['id'] as int,
      name: json['name'] as String,
      url: json['url'] as String,
    );
  }

  @override
  List<Object?> get props {
    return [
      id,
      name,
      url,
    ];
  }
}

class StatusModelInDriverDetailsModel extends Equatable {
  final String id;
  final String name;

  const StatusModelInDriverDetailsModel({
    required this.id,
    required this.name,
  });

  factory StatusModelInDriverDetailsModel.fromJson(Map<String, dynamic> json) {
    return StatusModelInDriverDetailsModel(
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

class StatusInUsersForDriverModel extends Equatable {
  final int id;
  final String name;

  const StatusInUsersForDriverModel({
    required this.id,
    required this.name,
  });

  factory StatusInUsersForDriverModel.fromJson(Map<String, dynamic> json) {
    return StatusInUsersForDriverModel(
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
