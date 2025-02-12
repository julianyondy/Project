part of 'simpanan_sukarela_bloc.dart';

/// Represents the state of SimpananSukarela in the application.

// ignore_for_file: must_be_immutable
class SimpananSukarelaState extends Equatable {
  SimpananSukarelaState(
      {this.datetwoController, this.simpananSukarelaModelObj});

  TextEditingController? datetwoController;

  SimpananSukarelaModel? simpananSukarelaModelObj;

  @override
  List<Object?> get props => [datetwoController, simpananSukarelaModelObj];
  SimpananSukarelaState copyWith({
    TextEditingController? datetwoController,
    SimpananSukarelaModel? simpananSukarelaModelObj,
  }) {
    return SimpananSukarelaState(
      datetwoController: datetwoController ?? this.datetwoController,
      simpananSukarelaModelObj:
          simpananSukarelaModelObj ?? this.simpananSukarelaModelObj,
    );
  }
}

