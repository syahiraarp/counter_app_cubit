import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

//memakai int krn statenya sederhana, yg berubah cuma counternya
class CounterCubit extends Cubit<CounterState> {
  // initial state di isi disini
  CounterCubit() : super(CounterState(counterValue: 0));

  //state ini variable yang ada disini sesuai dengan input di cubit<state>
  void increment() => emit(
    CounterState(counterValue: state.counterValue + 1),
    );
  void decrement() {
    if(state.counterValue > 0) {
    emit(
    CounterState(counterValue: state.counterValue - 1)
    );
    }
  }
  
}
