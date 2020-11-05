import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_state/counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  int initialState;
  CounterBloc(int initialState) : super(initialState);


  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
     switch(event) {
       case  CounterEvent.increment :
         yield state + 1;
         break;
       case CounterEvent.decrement:
         yield state - 1;
         break;
     }
  }
  /// using method transition to see currentState and event and nextState
  @override
  void onTransition(Transition<CounterEvent, int> transition) {
    super.onTransition(transition);
    // print(transition);
  }
  /// using this method if i want to know event and what event.
  @override
  void onEvent(CounterEvent event) {
    super.onEvent(event);
    // print(event);
  }

}