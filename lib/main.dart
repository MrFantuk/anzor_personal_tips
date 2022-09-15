
import 'package:anzor_personal_tips/bloc/counter/counter_bloc.dart';
import 'package:anzor_personal_tips/bloc/counter/counter_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiBlocProvider(
        providers: [
        // создаем связь Bloc с приложением
          BlocProvider(
            // ..add добавление Event при создании блока 
            create: (BuildContext context) => CounterBloc()..add(LoadCounterEvent(10)),  
          ),
          
        ],
        child: const  CounterBuilder(),
      ),
    );
  }
}
