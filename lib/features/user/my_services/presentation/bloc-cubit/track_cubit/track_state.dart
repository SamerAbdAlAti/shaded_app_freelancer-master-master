part of 'track_cubit.dart';


@immutable
abstract class TrackState {}

class TrackInitial extends TrackState {}

class TrackIncreaseStaffState extends TrackState {
  TrackIncreaseStaffState(int index);
}

class TrackIncreaseConditionState extends TrackState {
  TrackIncreaseConditionState(int index);
}

class TrackIncreaseCreateState extends TrackState {
  TrackIncreaseCreateState(int index);
}

class TrackDecreaseStaffState extends TrackState {
  TrackDecreaseStaffState(int index);
}

class TrackDecreaseConditionState extends TrackState {
  TrackDecreaseConditionState(int index);
}

class TrackDecreaseCreateState extends TrackState {
  TrackDecreaseCreateState(int index);
}

class SelectImageState extends TrackState {}

class SelectFirstChoice extends TrackState {}

class SelectSecondChoice extends TrackState {}

class SelectThirdChoice extends TrackState {}
