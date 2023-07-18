import 'package:flutter_bloc/flutter_bloc.dart';

// Events for the stepper
enum StepperEvent { next, previous }

class StepperCubit extends Cubit<int> {
  StepperCubit() : super(0);

  void nextStep() => emit(state + 1);
  void previousStep() => emit(state - 1);
}
