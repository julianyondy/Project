part of 'produk_bloc.dart';

/// Represents the state of Produk in the application.

// ignore_for_file: must_be_immutable
class ProdukState extends Equatable {
  ProdukState({this.produkModelObj});

  ProdukModel? produkModelObj;

  @override
  List<Object?> get props => [produkModelObj];
  ProdukState copyWith({ProdukModel? produkModelObj}) {
    return ProdukState(
      produkModelObj: produkModelObj ?? this.produkModelObj,
    );
  }
}

