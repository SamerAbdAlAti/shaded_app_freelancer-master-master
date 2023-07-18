part of 'layout_cubit.dart';

@immutable
abstract class LayoutState {}

class LayoutInitial extends LayoutState {}

class ChangeBottomNavigationBarState extends LayoutState {
  ChangeBottomNavigationBarState(index);
}