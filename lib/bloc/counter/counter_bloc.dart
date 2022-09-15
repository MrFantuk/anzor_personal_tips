import 'package:bloc/bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitialState()) {
    ///При событии мы передаем одно из состояний CounterState;
    ///Пример без выноса void функции
    on<LoadCounterEvent>((variable, emit) {
      // На данный момент, не производим никаких операций
      // Исходное значение (10), получаем из BlocProvider который создаем вместе с ..add(Event) в main.dart
    
      // эмиттим(передаем необходимое состояние)
      emit(CounterLoadedState(variable.number));
    });
    on<IncreaseCounterEvent>(_onIncreaseCounter);
    on<DecreaseCounterEvent>(_onDecrCounter);
  }

//Выносим void Функцию, для удобства чтения кода
  void _onIncreaseCounter(
      IncreaseCounterEvent event, Emitter<CounterState> emit) {
    //Здесь проводим все необходимые операции
    final total = event.number + 1;
// После произведенных операций эмиттим(передаем необходимое состояние)
    emit(CounterLoadedState(total));
  }

  void _onDecrCounter(DecreaseCounterEvent event, Emitter<CounterState> emit) {
      //Здесь проводим все необходимые операции
    final total = event.number - 1;
    // После произведенных операций эмиттим(передаем необходимое состояние)
    emit(CounterLoadedState(total));
  }
}
