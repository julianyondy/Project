import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/pop_up_simpanan_wajib_model.dart';
part 'pop_up_simpanan_wajib_event.dart';
part 'pop_up_simpanan_wajib_state.dart';

/// A bloc that manages the state of a PopUpSimpananWajib according to the event that is dispatched to it.
class PopUpSimpananWajibBloc
    extends Bloc<PopUpSimpananWajibEvent, PopUpSimpananWajibState> {
  PopUpSimpananWajibBloc(super.initialState) {
    on<PopUpSimpananWajibInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PopUpSimpananWajibInitialEvent event,
    Emitter<PopUpSimpananWajibState> emit,
  ) async {}
}

