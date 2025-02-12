part of 'pop_up_approval_bloc.dart';

/// Represents the state of PopUpApproval in the application.

// ignore_for_file: must_be_immutable
class PopUpApprovalState extends Equatable {
  PopUpApprovalState({this.popUpApprovalModelObj});

  PopUpApprovalModel? popUpApprovalModelObj;

  @override
  List<Object?> get props => [popUpApprovalModelObj];
  PopUpApprovalState copyWith({PopUpApprovalModel? popUpApprovalModelObj}) {
    return PopUpApprovalState(
      popUpApprovalModelObj:
          popUpApprovalModelObj ?? this.popUpApprovalModelObj,
    );
  }
}

