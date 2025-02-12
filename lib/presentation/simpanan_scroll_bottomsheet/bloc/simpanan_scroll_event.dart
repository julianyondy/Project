part of 'simpanan_scroll_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SimpananScroll widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class SimpananScrollEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SimpananScroll widget is first created.
class SimpananScrollInitialEvent extends SimpananScrollEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing slider index

// ignore_for_file: must_be_immutable
class ChangeSliderIndexEvent extends SimpananScrollEvent {
  ChangeSliderIndexEvent({required this.value});

  int value;

  @override
  List<Object?> get props => [value];
}

