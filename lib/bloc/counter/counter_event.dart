part of 'counter_bloc.dart';

abstract class CounterEvent {}

// Основное событие которое мы добавляем при создании BlocProvider
class LoadCounterEvent extends CounterEvent {
  //Переменные которые мы хотим передать вместе с Событием(Event)
  int number;

  LoadCounterEvent(
    this.number,
  );
}

class UpdateCounterEvent extends CounterEvent {}

class IncreaseCounterEvent extends CounterEvent {
  //Переменные которые мы хотим передать вместе с Событием(Event)
  int number;
  IncreaseCounterEvent({
    required this.number,
  });
}

class DecreaseCounterEvent extends CounterEvent {
  //Переменные которые мы хотим передать вместе с Событием(Event)
  int number;
  DecreaseCounterEvent({
    required this.number,
  });
}

class SetCustomNumberEvent extends CounterEvent {}
