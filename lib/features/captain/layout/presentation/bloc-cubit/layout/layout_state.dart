part of 'layout_cubit.dart';

@immutable
abstract class CaptainLayoutState {}

class LayoutInitial extends CaptainLayoutState {}

class ChangeBottomNavigationBarState extends CaptainLayoutState {
  ChangeBottomNavigationBarState(index);
}