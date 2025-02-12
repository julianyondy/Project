import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/pop_up_approval_model.dart';
part 'pop_up_approval_event.dart';
part 'pop_up_approval_state.dart';

/// A bloc that manages the state of a PopUpApproval according to the event that is dispatched to it.
class PopUpApprovalBloc extends Bloc<PopUpApprovalEvent, PopUpApprovalState> {
  PopUpApprovalBloc(super.initialState) {
    on<PopUpApprovalInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PopUpApprovalInitialEvent event,
    Emitter<PopUpApprovalState> emit,
  ) async {}
}

