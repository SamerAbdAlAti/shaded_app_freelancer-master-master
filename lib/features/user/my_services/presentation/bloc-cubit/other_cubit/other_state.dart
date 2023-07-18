abstract class OtherState {}

class OtherInitial extends OtherState {}

class OtherIncreaseStaffState extends OtherState {
  OtherIncreaseStaffState(int index);
}

class OtherIncreaseConditionState extends OtherState {
  OtherIncreaseConditionState(int index);
}

class OtherIncreaseCreateState extends OtherState {
  OtherIncreaseCreateState(int index);
}

class OtherDecreaseStaffState extends OtherState {
  OtherDecreaseStaffState(int index);
}

class OtherDecreaseConditionState extends OtherState {
  OtherDecreaseConditionState(int index);
}

class OtherDecreaseCreateState extends OtherState {
  OtherDecreaseCreateState(int index);
}

class SelectImageState extends OtherState {}

class SelectFirstChoice extends OtherState {}

class SelectSecondChoice extends OtherState {}

class SelectThirdChoice extends OtherState {}