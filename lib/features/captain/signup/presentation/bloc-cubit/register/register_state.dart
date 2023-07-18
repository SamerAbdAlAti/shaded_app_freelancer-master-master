part of 'register_cubit.dart';

@immutable
abstract class CaptainRegisterState {}

class RegisterInitial extends CaptainRegisterState {}

class Loading extends CaptainRegisterState {}

class Success extends CaptainRegisterState {}

class Error extends CaptainRegisterState {
  Error(String message);
}
