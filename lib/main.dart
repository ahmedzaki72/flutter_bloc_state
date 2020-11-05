import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_state/counter_bloc.dart';
import 'package:flutter_bloc_state/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bloc App',
      home: BlocProvider<CounterBloc>(
        create: (context) => CounterBloc(0),
        child: HomeScreen(),
      ),
    );
  }
}
