part of 'produk_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Produk widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class ProdukEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Produk widget is first created.
class ProdukInitialEvent extends ProdukEvent {
  @override
  List<Object?> get props => [];
}

