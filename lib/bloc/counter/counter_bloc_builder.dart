import 'package:anzor_personal_tips/bloc/counter/counter_bloc.dart';
import 'package:anzor_personal_tips/ui/counter_ui/counter_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// Основной виджет, который отделен от нашего UI
// Отвечает за отрисовку какого либо экрана или виджета
class CounterBuilder extends StatelessWidget {
  const CounterBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final counterBloc = BlocProvider.of<CounterBloc>(context);
    return BlocBuilder(
      bloc: counterBloc,
      builder: (_, state) {
        if (state is CounterLoadedState) {
          return CounterScreen(screenNumber: state.number,);
        }
        if (state is CounterErrorState) {
          return Center(child: Text("Error"),);
        }

        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
