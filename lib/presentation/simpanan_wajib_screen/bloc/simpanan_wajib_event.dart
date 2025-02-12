part of 'simpanan_wajib_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SimpananWajib widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class SimpananWajibEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SimpananWajib widget is first created.
class SimpananWajibInitialEvent extends SimpananWajibEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing date

// ignore_for_file: must_be_immutable
class ChangeDateEvent extends SimpananWajibEvent {
  ChangeDateEvent({required this.date});

  DateTime date;

  @override
  List<Object?> get props => [date];
}

