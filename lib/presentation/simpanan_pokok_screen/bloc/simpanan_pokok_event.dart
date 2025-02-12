part of 'simpanan_pokok_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SimpananPokok widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class SimpananPokokEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SimpananPokok widget is first created.
class SimpananPokokInitialEvent extends SimpananPokokEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing date

// ignore_for_file: must_be_immutable
class ChangeDateEvent extends SimpananPokokEvent {
  ChangeDateEvent({required this.date});

  DateTime date;

  @override
  List<Object?> get props => [date];
}

