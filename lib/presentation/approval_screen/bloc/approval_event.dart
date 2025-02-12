part of 'approval_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Approval widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class ApprovalEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Approval widget is first created.
class ApprovalInitialEvent extends ApprovalEvent {
  @override
  List<Object?> get props => [];
}

