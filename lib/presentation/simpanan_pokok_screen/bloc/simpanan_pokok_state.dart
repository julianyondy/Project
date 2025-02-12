part of 'simpanan_pokok_bloc.dart';

/// Represents the state of SimpananPokok in the application.

// ignore_for_file: must_be_immutable
class SimpananPokokState extends Equatable {
  SimpananPokokState({this.datetwoController, this.simpananPokokModelObj});

  TextEditingController? datetwoController;

  SimpananPokokModel? simpananPokokModelObj;

  @override
  List<Object?> get props => [datetwoController, simpananPokokModelObj];
  SimpananPokokState copyWith({
    TextEditingController? datetwoController,
    SimpananPokokModel? simpananPokokModelObj,
  }) {
    return SimpananPokokState(
      datetwoController: datetwoController ?? this.datetwoController,
      simpananPokokModelObj:
          simpananPokokModelObj ?? this.simpananPokokModelObj,
    );
  }
}

