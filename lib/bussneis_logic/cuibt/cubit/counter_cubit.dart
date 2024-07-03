import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());
  int teamAPoints = 0;
  int teamBPoints = 0;

  void Teamone({required int buttonNumber, required String team}) {
    if (team == 'A') {
      teamAPoints += buttonNumber;
      emit(CounterAIncrementStat());
    } else {
      teamBPoints += buttonNumber;
      emit(CounterBIncremebtStat());
    }
  }
}
