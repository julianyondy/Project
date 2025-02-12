part of 'simpanan_scroll_bloc.dart';

/// Represents the state of SimpananScroll in the application.

// ignore_for_file: must_be_immutable
class SimpananScrollState extends Equatable {
  SimpananScrollState({this.sliderIndex = 0, this.simpananScrollModelObj});

  SimpananScrollModel? simpananScrollModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [sliderIndex, simpananScrollModelObj];
  SimpananScrollState copyWith({
    int? sliderIndex,
    SimpananScrollModel? simpananScrollModelObj,
  }) {
    return SimpananScrollState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      simpananScrollModelObj:
          simpananScrollModelObj ?? this.simpananScrollModelObj,
    );
  }
}

