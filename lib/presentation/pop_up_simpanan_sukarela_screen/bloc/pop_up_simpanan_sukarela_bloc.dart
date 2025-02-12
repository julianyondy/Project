import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/pop_up_simpanan_sukarela_model.dart';
part 'pop_up_simpanan_sukarela_event.dart';
part 'pop_up_simpanan_sukarela_state.dart';

/// A bloc that manages the state of a PopUpSimpananSukarela according to the event that is dispatched to it.
class PopUpSimpananSukarelaBloc
    extends Bloc<PopUpSimpananSukarelaEvent, PopUpSimpananSukarelaState> {
  PopUpSimpananSukarelaBloc(super.initialState) {
    on<PopUpSimpananSukarelaInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PopUpSimpananSukarelaInitialEvent event,
    Emitter<PopUpSimpananSukarelaState> emit,
  ) async {}
}

