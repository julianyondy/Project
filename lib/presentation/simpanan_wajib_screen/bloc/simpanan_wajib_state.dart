part of 'simpanan_wajib_bloc.dart';

/// Represents the state of SimpananWajib in the application.

// ignore_for_file: must_be_immutable
class SimpananWajibState extends Equatable {
  SimpananWajibState({this.datetwoController, this.simpananWajibModelObj});

  TextEditingController? datetwoController;

  SimpananWajibModel? simpananWajibModelObj;

  @override
  List<Object?> get props => [datetwoController, simpananWajibModelObj];
  SimpananWajibState copyWith({
    TextEditingController? datetwoController,
    SimpananWajibModel? simpananWajibModelObj,
  }) {
    return SimpananWajibState(
      datetwoController: datetwoController ?? this.datetwoController,
      simpananWajibModelObj:
          simpananWajibModelObj ?? this.simpananWajibModelObj,
    );
  }
}

