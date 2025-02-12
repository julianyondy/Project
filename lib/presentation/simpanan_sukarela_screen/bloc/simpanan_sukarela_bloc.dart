import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/simpanan_sukarela_model.dart';
part 'simpanan_sukarela_event.dart';
part 'simpanan_sukarela_state.dart';

/// A bloc that manages the state of a SimpananSukarela according to the event that is dispatched to it.
class SimpananSukarelaBloc
    extends Bloc<SimpananSukarelaEvent, SimpananSukarelaState> {
  SimpananSukarelaBloc(super.initialState) {
    on<SimpananSukarelaInitialEvent>(_onInitialize);
    on<ChangeDateEvent>(_changeDate);
  }

  _onInitialize(
    SimpananSukarelaInitialEvent event,
    Emitter<SimpananSukarelaState> emit,
  ) async {
    emit(
      state.copyWith(
        datetwoController: TextEditingController(),
      ),
    );
  }

  _changeDate(
    ChangeDateEvent event,
    Emitter<SimpananSukarelaState> emit,
  ) {
    emit(state.copyWith(
        simpananSukarelaModelObj: state.simpananSukarelaModelObj?.copyWith(
      selectedDateTwo: event.date,
    )));
  }
}

