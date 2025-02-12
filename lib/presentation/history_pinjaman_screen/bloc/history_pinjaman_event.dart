part of 'history_pinjaman_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HistoryPinjaman widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class HistoryPinjamanEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the HistoryPinjaman widget is first created.
class HistoryPinjamanInitialEvent extends HistoryPinjamanEvent {
  @override
  List<Object?> get props => [];
}

