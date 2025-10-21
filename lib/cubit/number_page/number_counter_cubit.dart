import 'package:bloc/bloc.dart';
import 'package:practice_app/cubit/number_page/number_counter_state.dart';

class NumberCounterCubit extends Cubit<NumberCounterState> {
  NumberCounterCubit() : super(NumberCounterState());

  void plusNumber() {
    emit(state.copyWith(number: state.number + 1));
  }

  void minusNumber() {
    if (state.number != 0) {
      emit(state.copyWith(number: state.number - 1));
    }
  }

  void resetNumber() {
    emit(state.copyWith(number: 0));
  }
}
