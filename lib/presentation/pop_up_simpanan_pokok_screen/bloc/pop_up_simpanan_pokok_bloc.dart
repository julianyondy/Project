import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/pop_up_simpanan_pokok_model.dart';
part 'pop_up_simpanan_pokok_event.dart';
part 'pop_up_simpanan_pokok_state.dart';

/// A bloc that manages the state of a PopUpSimpananPokok according to the event that is dispatched to it.
class PopUpSimpananPokokBloc
    extends Bloc<PopUpSimpananPokokEvent, PopUpSimpananPokokState> {
  PopUpSimpananPokokBloc(super.initialState) {
    on<PopUpSimpananPokokInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PopUpSimpananPokokInitialEvent event,
    Emitter<PopUpSimpananPokokState> emit,
  ) async {}
}

