part of 'counter_bloc.dart';
// Основной класс который содержит в себе все состаяния которые тебе нужны
abstract class CounterState {}

// Исходное состояние при создании counter bloc
class CounterInitialState extends CounterState {
  int number = 70;
}
//Состояние которое мы передаем после завершения какого либо Event"а
class CounterLoadedState extends CounterState {
  final int number;

  CounterLoadedState(this.number);
}
// При получении какой либо шибки, мы можем emit данное состояние (пока не используется ни где)
class CounterErrorState extends CounterState {}
