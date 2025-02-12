part of 'pinjaman_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Pinjaman widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class PinjamanEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Pinjaman widget is first created.
class PinjamanInitialEvent extends PinjamanEvent {
  @override
  List<Object?> get props => [];
}

