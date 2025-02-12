part of 'pop_up_approval_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PopUpApproval widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class PopUpApprovalEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the PopUpApproval widget is first created.
class PopUpApprovalInitialEvent extends PopUpApprovalEvent {
  @override
  List<Object?> get props => [];
}

