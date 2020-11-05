import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_state/counter_bloc.dart';
import 'package:flutter_bloc_state/counter_event.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CounterBloc cB = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      appBar: AppBar(title: Text('Bloc App'),),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(icon: Icon(Icons.remove), onPressed: (){
              cB.add(CounterEvent.decrement);
            },),
            BlocBuilder<CounterBloc, int>(builder: (context , state){
               return Text('$state');
            },),
            IconButton(icon: Icon(Icons.add), onPressed: (){
               cB.add(CounterEvent.increment);
            },),
          ],
        ),
      ),
    );
  }
}
