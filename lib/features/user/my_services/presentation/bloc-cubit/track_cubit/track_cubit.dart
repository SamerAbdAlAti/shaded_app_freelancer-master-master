import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'track_state.dart';

class TrackCubit extends Cubit<TrackState> {
  TrackCubit() : super(TrackInitial());

  static TrackCubit get(context) => BlocProvider.of(context);

  final GlobalKey trackFormKey = GlobalKey<FormState>();
  final TextEditingController trackFieldController = TextEditingController();
  final TextEditingController fromAddressController = TextEditingController();
  final TextEditingController toAddressController = TextEditingController();


  void increaseTrackStaff(int index) {
    index = index + 1;
    emit(TrackIncreaseStaffState(index));
  }

  void decreaseTrackStaff(int index) {
    index = index - 1;

    emit(TrackDecreaseStaffState(index));
  }

  void increaseTrackCondition(int index) {
    index = index + 1;

    emit(TrackIncreaseConditionState(index));
  }

  void decreaseTrackCondition(int index) {
    index = index - 1;

    emit(TrackDecreaseConditionState(index));
  }

  int createIndex = 0;

  Future<void> increaseTrackCreate(int createIndex) async {
    emit(TrackIncreaseCreateState(createIndex + 1));
  }

  Future<void> decreaseTrackCreate(int createIndex) async {
    emit(TrackDecreaseCreateState(createIndex - 1));
  }

  bool optionA = false;
  bool optionB = false;
  int currStep = 0;
  int _staffNumber = 0;
//
// void _increaseStaffNumber() {
//   setState(() {
//     _staffNumber++;
//   });
// }
//
// void _decreaseStaffNumber() {
//   if (_staffNumber > 0) {
//     setState(() {
//       _staffNumber--;
//     });
//   }
// }
}
