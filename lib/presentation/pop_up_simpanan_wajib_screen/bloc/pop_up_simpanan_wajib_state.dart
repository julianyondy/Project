part of 'pop_up_simpanan_wajib_bloc.dart';

/// Represents the state of PopUpSimpananWajib in the application.

// ignore_for_file: must_be_immutable
class PopUpSimpananWajibState extends Equatable {
  PopUpSimpananWajibState({this.popUpSimpananWajibModelObj});

  PopUpSimpananWajibModel? popUpSimpananWajibModelObj;

  @override
  List<Object?> get props => [popUpSimpananWajibModelObj];
  PopUpSimpananWajibState copyWith(
      {PopUpSimpananWajibModel? popUpSimpananWajibModelObj}) {
    return PopUpSimpananWajibState(
      popUpSimpananWajibModelObj:
          popUpSimpananWajibModelObj ?? this.popUpSimpananWajibModelObj,
    );
  }
}

