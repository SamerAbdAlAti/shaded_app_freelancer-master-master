import 'package:equatable/equatable.dart';

import '../../../../../_core/enums/requset_state_enums.dart';

// AuthenticationCubit states
abstract class LoginState extends Equatable {
  final String error;
  final RequestState loginStateLogin;

  const LoginState({
    this.error = "",
    this.loginStateLogin = RequestState.done,
  });

  @override
  List<Object> get props => [error, loginStateLogin];
}

class ChangeUserTypes extends LoginState {
  final String selected;

  ChangeUserTypes(this.selected);
}

class UserSelected extends LoginState {
  final String selected;

  UserSelected(this.selected);
}

class AuthenticationInitial extends LoginState {}

class AuthenticationLoading extends LoginState {}

class AuthenticationSuccess extends LoginState {
  final String token;
  final dynamic deviceType;
  final String userType;
  final dynamic userData;

  const AuthenticationSuccess(
    this.token,
    this.deviceType,
    this.userType,
    this.userData,
  );

  @override
  List<Object> get props => [token];
}

class AuthenticationFailure extends LoginState {
  final String error;

  const AuthenticationFailure(this.error) : super(error: error);

  @override
  List<Object> get props => [error];
}

// for user
class UserLoginLoading extends LoginState {}

class UserLoginSuccess extends LoginState {
  final String token;
  final dynamic deviceType;
  final String userType;
  final dynamic userData;

  const UserLoginSuccess(this.token, this.deviceType, this.userType, this.userData);

  @override
  List<Object> get props => [token];
}

class UserLoginFailure extends LoginState {
  final String error;

  const UserLoginFailure(this.error) : super(error: error);

  @override
  List<Object> get props => [error];
}

// for captain
class CaptainLoginLoading extends LoginState {}

class CaptainLoginSuccess extends LoginState {
  final String token;
  final dynamic deviceType;
  final String userType;
  final dynamic userData;

  const CaptainLoginSuccess(this.token, this.deviceType, this.userType, this.userData);

  @override
  List<Object> get props => [token];
}

class CaptainLoginFailure extends LoginState {
  final String error;

  const CaptainLoginFailure(this.error) : super(error: error);

  @override
  List<Object> get props => [error];
}

// import 'package:equatable/equatable.dart';
//
//
// abstract class LoginState extends Equatable {
//   const LoginState();
//
//   @override
//   List<Object> get props => [];
// }
//
// class AuthInitial extends LoginState {}
//
// class AuthLoading extends LoginState {}
//
// class AuthError extends LoginState {
//   final String message;
//
//   AuthError(this.message);
//
//   @override
//   List<Object> get props => [message];
// }
//
// class AuthCaptainVerificationNeeded extends LoginState {
//   final dynamic user;
//
//   AuthCaptainVerificationNeeded(this.user);
//
//   @override
//   List<Object> get props => [user];
// }
//
// class AuthUserVerificationNeeded extends LoginState {
//   final dynamic user;
//
//   AuthUserVerificationNeeded(this.user);
//
//   @override
//   List<Object> get props => [user];
// }
//
// class AuthCaptainDetailsNeeded extends LoginState {
//   final dynamic user;
//
//   AuthCaptainDetailsNeeded(this.user);
//
//   @override
//   List<Object> get props => [user];
// }
//
// class AuthUserDetailsNeeded extends LoginState {
//   final dynamic user;
//
//   AuthUserDetailsNeeded(this.user);
//
//   @override
//   List<Object> get props => [user];
// }
//
// class AuthCaptainAuthenticated extends LoginState {
//   final dynamic user;
//
//   AuthCaptainAuthenticated(this.user);
//
//   @override
//   List<Object> get props => [user];
// }
//
// class AuthUserAuthenticated extends LoginState {
//   final dynamic user;
//
//   AuthUserAuthenticated(this.user);
//
//   @override
//   List<Object> get props => [user];
// }

class LoginProgressState extends LoginState {
  final RequestState loginState;

  LoginProgressState({required this.loginState}) : super(loginStateLogin: loginState);
}
