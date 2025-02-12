part of 'history_pembelian_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HistoryPembelian widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class HistoryPembelianEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the HistoryPembelian widget is first created.
class HistoryPembelianInitialEvent extends HistoryPembelianEvent {
  @override
  List<Object?> get props => [];
}

