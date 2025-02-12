import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/simpanan_pokok_model.dart';
part 'simpanan_pokok_event.dart';
part 'simpanan_pokok_state.dart';

/// A bloc that manages the state of a SimpananPokok according to the event that is dispatched to it.
class SimpananPokokBloc extends Bloc<SimpananPokokEvent, SimpananPokokState> {
  SimpananPokokBloc(super.initialState) {
    on<SimpananPokokInitialEvent>(_onInitialize);
    on<ChangeDateEvent>(_changeDate);
  }

  _onInitialize(
    SimpananPokokInitialEvent event,
    Emitter<SimpananPokokState> emit,
  ) async {
    emit(
      state.copyWith(
        datetwoController: TextEditingController(),
      ),
    );
  }

  _changeDate(
    ChangeDateEvent event,
    Emitter<SimpananPokokState> emit,
  ) {
    emit(state.copyWith(
        simpananPokokModelObj: state.simpananPokokModelObj?.copyWith(
      selectedDateTwo: event.date,
    )));
  }
}

