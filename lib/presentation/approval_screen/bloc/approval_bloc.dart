import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/approval_model.dart';
part 'approval_event.dart';
part 'approval_state.dart';

/// A bloc that manages the state of a Approval according to the event that is dispatched to it.
class ApprovalBloc extends Bloc<ApprovalEvent, ApprovalState> {
  ApprovalBloc(super.initialState) {
    on<ApprovalInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ApprovalInitialEvent event,
    Emitter<ApprovalState> emit,
  ) async {}
}

