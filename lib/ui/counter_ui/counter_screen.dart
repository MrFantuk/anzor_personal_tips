import 'package:anzor_personal_tips/bloc/counter/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  final int screenNumber;
  const CounterScreen({super.key, required this.screenNumber});

  @override
  Widget build(BuildContext context) {
    // Обращяемся к блоку CounterBloc через BlocProvider (созданный в main.dart)
    final counterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              "$screenNumber",
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 30),
            ),
            ElevatedButton(
                onPressed: () =>
                // Добавляем новое событие (В данном случае увеличиваем исходное значение screenNumber)
                // Вся функция происходит в counter_bloc.dart
                    counterBloc.add(IncreaseCounterEvent(number: screenNumber)),
                child: Text("Increase"))
          ],
        ),
      ),
    );
  }
}
