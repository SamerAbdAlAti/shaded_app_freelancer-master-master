part of 'register_cubit.dart';

@immutable
abstract class RegisterState {}

class RegisterInitial extends RegisterState {}

class Loading extends RegisterState {}

class Success extends RegisterState {}

class Error extends RegisterState {
  Error(String message);
}
