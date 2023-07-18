part of 'edit_user_cubit.dart';

@immutable
abstract class EditUserState {}

class EditUserInitial extends EditUserState {}

class DriverProfileInitial extends EditUserState {}

class DriverProfileDeleted extends EditUserState {}

class DriverProfileError extends EditUserState {
  final String message;

  DriverProfileError(this.message);
}