import 'package:equatable/equatable.dart';

/// This class is used in the [produk_item_widget] screen.

// ignore_for_file: must_be_immutable
class ProdukItemModel extends Equatable {
  ProdukItemModel({this.namaprodukone, this.harga, this.id}) {
    namaprodukone = namaprodukone ?? "Madu Pelabo Trigona";
    harga = harga ?? "Rp. -";
    id = id ?? "";
  }

  String? namaprodukone;

  String? harga;

  String? id;

  ProdukItemModel copyWith({
    String? namaprodukone,
    String? harga,
    String? id,
  }) {
    return ProdukItemModel(
      namaprodukone: namaprodukone ?? this.namaprodukone,
      harga: harga ?? this.harga,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [namaprodukone, harga, id];
}

