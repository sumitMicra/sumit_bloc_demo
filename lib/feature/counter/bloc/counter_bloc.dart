import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
 on<ConuterIncrementEvent>(conuterIncrementEvent);
  }
  int count = 0;

  FutureOr<void> conuterIncrementEvent(ConuterIncrementEvent event, Emitter<CounterState> emit) {
    count++;

    emit(CounterIncrementState(value: count));
  }
}
