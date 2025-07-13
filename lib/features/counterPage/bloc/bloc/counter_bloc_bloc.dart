
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_bloc_event.dart';

class CounterBlocBloc extends Bloc<CounterBlocEvent, int> {
  CounterBlocBloc() : super(0) {
    on<IncreaseCounterEvent>((event, emit) {
      emit(state + 1);
    });
    on<DecreaseCounterEvent>((event, emit) {
      if (state == 0) {
        return;
      }
      emit(state - 1);
    });
    on<ResetCounterEvent>((event, emit) {
      emit(0);
    });
  }
}
