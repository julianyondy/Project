part of 'simpanan_sukarela_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SimpananSukarela widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class SimpananSukarelaEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SimpananSukarela widget is first created.
class SimpananSukarelaInitialEvent extends SimpananSukarelaEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing date

// ignore_for_file: must_be_immutable
class ChangeDateEvent extends SimpananSukarelaEvent {
  ChangeDateEvent({required this.date});

  DateTime date;

  @override
  List<Object?> get props => [date];
}

