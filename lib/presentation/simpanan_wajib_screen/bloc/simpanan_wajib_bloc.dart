import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/simpanan_wajib_model.dart';
part 'simpanan_wajib_event.dart';
part 'simpanan_wajib_state.dart';

/// A bloc that manages the state of a SimpananWajib according to the event that is dispatched to it.
class SimpananWajibBloc extends Bloc<SimpananWajibEvent, SimpananWajibState> {
  SimpananWajibBloc(super.initialState) {
    on<SimpananWajibInitialEvent>(_onInitialize);
    on<ChangeDateEvent>(_changeDate);
  }

  _onInitialize(
    SimpananWajibInitialEvent event,
    Emitter<SimpananWajibState> emit,
  ) async {
    emit(
      state.copyWith(
        datetwoController: TextEditingController(),
      ),
    );
  }

  _changeDate(
    ChangeDateEvent event,
    Emitter<SimpananWajibState> emit,
  ) {
    emit(state.copyWith(
        simpananWajibModelObj: state.simpananWajibModelObj?.copyWith(
      selectedDateTwo: event.date,
    )));
  }
}

