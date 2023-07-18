part of 'quick_cubit.dart';

@immutable
abstract class QuickState {}

class QuickInitial extends QuickState {}

class QuickIncreaseStaffState extends QuickState {
  QuickIncreaseStaffState(int index);
}

class QuickIncreaseConditionState extends QuickState {
  QuickIncreaseConditionState(int index);
}

class QuickIncreaseCreateState extends QuickState {
  QuickIncreaseCreateState(int index);
}

class QuickDecreaseStaffState extends QuickState {
  QuickDecreaseStaffState(int index);
}

class QuickDecreaseConditionState extends QuickState {
  QuickDecreaseConditionState(int index);
}

class QuickDecreaseCreateState extends QuickState {
  QuickDecreaseCreateState(int index);
}

class SelectImageState extends QuickState {}

class SelectFirstChoice extends QuickState {}

class SelectSecondChoice extends QuickState {}

class SelectThirdChoice extends QuickState {}

class ChangeCheckBox extends QuickState {
  ChangeCheckBox(value);
}

class AddImage extends QuickState {
  AddImage(List<String> imagePaths);
}

class CreateRequestInitial extends QuickState {}

class CreateRequestSuccess extends QuickState {
  final dynamic data;

  CreateRequestSuccess(this.data);
}

class CreateRequestFailure extends QuickState {
  final String errorMessage;

  CreateRequestFailure(this.errorMessage);
}