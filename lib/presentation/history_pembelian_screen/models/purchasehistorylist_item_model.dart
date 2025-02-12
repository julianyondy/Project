import 'package:equatable/equatable.dart';

/// This class is used in the [purchasehistorylist_item_widget] screen.
class PurchasehistorylistItemModel extends Equatable {
  String? tanggal;
  String? selesai;
  String? weight;
  String? barangCounter;
  String? totalharga;
  String? rpCounter;
  String? id;

  PurchasehistorylistItemModel({
    this.tanggal,
    this.selesai,
    this.weight,
    this.barangCounter,
    this.totalharga,
    this.rpCounter,
    this.id,
  }) {
    tanggal = tanggal ?? "20 Desember 2023";
    selesai = selesai ?? "Selesai";
    weight = weight ?? "Piattos 75gram";
    barangCounter = barangCounter ?? "2 barang";
    totalharga = totalharga ?? "Total Harga";
    rpCounter = rpCounter ?? "Rp 15.600";
    id = id ?? "";
  }

  PurchasehistorylistItemModel copyWith({
    String? tanggal,
    String? selesai,
    String? weight,
    String? barangCounter,
    String? totalharga,
    String? rpCounter,
    String? id,
  }) {
    return PurchasehistorylistItemModel(
      tanggal: tanggal ?? this.tanggal,
      selesai: selesai ?? this.selesai,
      weight: weight ?? this.weight,
      barangCounter: barangCounter ?? this.barangCounter,
      totalharga: totalharga ?? this.totalharga,
      rpCounter: rpCounter ?? this.rpCounter,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [
        tanggal,
        selesai,
        weight,
        barangCounter,
        totalharga,
        rpCounter,
        id,
      ];
}
