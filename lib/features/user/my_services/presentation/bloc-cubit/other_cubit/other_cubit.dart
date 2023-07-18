import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaded_app_freelancer/features/user/my_services/presentation/bloc-cubit/other_cubit/other_state.dart';


class OtherCubit extends Cubit<OtherState> {
  OtherCubit() : super(OtherInitial());

  static OtherCubit get(context) => BlocProvider.of(context);

  void increaseOtherStaff(int index) {
    index = index + 1;
    emit(OtherIncreaseStaffState(index));
  }

  void decreaseOtherStaff(int index) {
    index = index - 1;

    emit(OtherDecreaseStaffState(index));
  }

  void increaseOtherCondition(int index) {
    index = index + 1;

    emit(OtherIncreaseConditionState(index));
  }

  void decreaseOtherCondition(int index) {
    index = index - 1;

    emit(OtherDecreaseConditionState(index));
  }

  void increaseOtherCreate(int index) {
    index = index + 1;

    emit(OtherIncreaseCreateState(index));
  }

  void decreaseOtherCreate(int index) {
    index = index - 1;

    emit(OtherDecreaseCreateState(index));
  }
}
