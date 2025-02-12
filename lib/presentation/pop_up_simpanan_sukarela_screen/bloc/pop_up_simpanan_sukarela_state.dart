part of 'pop_up_simpanan_sukarela_bloc.dart';

/// Represents the state of PopUpSimpananSukarela in the application.

// ignore_for_file: must_be_immutable
class PopUpSimpananSukarelaState extends Equatable {
  PopUpSimpananSukarelaState({this.popUpSimpananSukarelaModelObj});

  PopUpSimpananSukarelaModel? popUpSimpananSukarelaModelObj;

  @override
  List<Object?> get props => [popUpSimpananSukarelaModelObj];
  PopUpSimpananSukarelaState copyWith(
      {PopUpSimpananSukarelaModel? popUpSimpananSukarelaModelObj}) {
    return PopUpSimpananSukarelaState(
      popUpSimpananSukarelaModelObj:
          popUpSimpananSukarelaModelObj ?? this.popUpSimpananSukarelaModelObj,
    );
  }
}

