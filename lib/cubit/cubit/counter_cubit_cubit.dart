import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_cubit_state.dart';

class CounterCubitCubit extends Cubit<int> {
  CounterCubitCubit() : super(50);

  //Выносим void Функцию, для удобства чтения кода
  void _onIncreaseCounter() => emit(state + 1);

  void _onDecrCounter() => emit(state - 1);
}
