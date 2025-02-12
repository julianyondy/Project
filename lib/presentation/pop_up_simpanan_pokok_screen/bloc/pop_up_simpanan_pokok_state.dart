part of 'pop_up_simpanan_pokok_bloc.dart';

/// Represents the state of PopUpSimpananPokok in the application.

// ignore_for_file: must_be_immutable
class PopUpSimpananPokokState extends Equatable {
  PopUpSimpananPokokState({this.popUpSimpananPokokModelObj});

  PopUpSimpananPokokModel? popUpSimpananPokokModelObj;

  @override
  List<Object?> get props => [popUpSimpananPokokModelObj];
  PopUpSimpananPokokState copyWith(
      {PopUpSimpananPokokModel? popUpSimpananPokokModelObj}) {
    return PopUpSimpananPokokState(
      popUpSimpananPokokModelObj:
          popUpSimpananPokokModelObj ?? this.popUpSimpananPokokModelObj,
    );
  }
}

