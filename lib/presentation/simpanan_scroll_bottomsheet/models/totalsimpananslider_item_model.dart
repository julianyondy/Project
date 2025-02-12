import 'package:equatable/equatable.dart';

/// This class is used in the [totalsimpananslider_item_widget] screen.

// ignore_for_file: must_be_immutable
class TotalsimpanansliderItemModel extends Equatable {
  TotalsimpanansliderItemModel({this.totalsimpanan, this.rp2000000, this.id}) {
    totalsimpanan = totalsimpanan ?? "Total Simpanan Wajib";
    rp2000000 = rp2000000 ?? "Rp. 2.000.000";
    id = id ?? "";
  }

  String? totalsimpanan;

  String? rp2000000;

  String? id;

  TotalsimpanansliderItemModel copyWith({
    String? totalsimpanan,
    String? rp2000000,
    String? id,
  }) {
    return TotalsimpanansliderItemModel(
      totalsimpanan: totalsimpanan ?? this.totalsimpanan,
      rp2000000: rp2000000 ?? this.rp2000000,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [totalsimpanan, rp2000000, id];
}

