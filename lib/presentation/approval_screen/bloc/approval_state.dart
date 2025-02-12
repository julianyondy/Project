part of 'approval_bloc.dart';

/// Represents the state of Approval in the application.

// ignore_for_file: must_be_immutable
class ApprovalState extends Equatable {
  ApprovalState({this.approvalModelObj});

  ApprovalModel? approvalModelObj;

  @override
  List<Object?> get props => [approvalModelObj];
  ApprovalState copyWith({ApprovalModel? approvalModelObj}) {
    return ApprovalState(
      approvalModelObj: approvalModelObj ?? this.approvalModelObj,
    );
  }
}

