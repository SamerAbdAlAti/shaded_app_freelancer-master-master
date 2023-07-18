import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void staffincrement() => emit(state + 1);
  void conditionincrement() => emit(state + 1);
  void createincrement() => emit(state + 1);

  void staffdecrement() => emit(state - 1);
  void conditiondecrement() => emit(state - 1);
  void createdecrement() => emit(state - 1);
}
