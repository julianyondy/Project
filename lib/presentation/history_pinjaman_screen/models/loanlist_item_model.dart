import 'package:equatable/equatable.dart';

/// This class is used in the [loanlist_item_widget] screen.
class LoanlistItemModel extends Equatable {
  String? label;
  String? selesai;
  String? pokokpinjaman;
  String? rpCounter;
  String? pokokpinjaman1;
  String? rpcounterOne;
  String? durasi;
  String? bulanCounter;
  String? disetujuioleh;
  String? bulan;
  String? disetujuioleh1;
  String? andihananto;
  String? id;

  LoanlistItemModel({
    this.label,
    this.selesai,
    this.pokokpinjaman,
    this.rpCounter,
    this.pokokpinjaman1,
    this.rpcounterOne,
    this.durasi,
    this.bulanCounter,
    this.disetujuioleh,
    this.bulan,
    this.disetujuioleh1,
    this.andihananto,
    this.id,
  }) {
    label = label ?? "Pinjaman Jangka Panjang";
    selesai = selesai ?? "Selesai";
    pokokpinjaman = pokokpinjaman ?? "Pokok Pinjaman";
    rpCounter = rpCounter ?? "Rp. 1.000.000";
    pokokpinjaman1 = pokokpinjaman1 ?? "Total Pinjaman";
    rpcounterOne = rpcounterOne ?? "Rp 3.000.000";
    durasi = durasi ?? "Durasi";
    bulanCounter = bulanCounter ?? "12 Bulan";
    disetujuioleh = disetujuioleh ?? "Selesai pada";
    disetujuioleh1 = disetujuioleh1 ?? "Disetujui oleh";
    bulan = bulan ?? "20 Desember 2023";
    andihananto = andihananto ?? "Andi Hananto";
    id = id ?? "";
  }

  LoanlistItemModel copyWith({
    String? label,
    String? selesai,
    String? pokokpinjaman,
    String? rpCounter,
    String? pokokpinjaman1,
    String? rpcounterOne,
    String? durasi,
    String? bulanCounter,
    String? disetujuioleh,
    String? bulan,
    String? disetujuioleh1,
    String? andihananto,
    String? id,
  }) {
    return LoanlistItemModel(
      label: label ?? this.label,
      selesai: selesai ?? this.selesai,
      pokokpinjaman: pokokpinjaman ?? this.pokokpinjaman,
      rpCounter: rpCounter ?? this.rpCounter,
      pokokpinjaman1: pokokpinjaman1 ?? this.pokokpinjaman1,
      rpcounterOne: rpcounterOne ?? this.rpcounterOne,
      durasi: durasi ?? this.durasi,
      bulanCounter: bulanCounter ?? this.bulanCounter,
      disetujuioleh: disetujuioleh ?? this.disetujuioleh,
      bulan: bulan ?? this.bulan,
      disetujuioleh1: disetujuioleh1 ?? this.disetujuioleh1,
      andihananto: andihananto ?? this.andihananto,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [
        label,
        selesai,
        pokokpinjaman,
        rpCounter,
        pokokpinjaman1,
        rpcounterOne,
        durasi,
        bulanCounter,
        disetujuioleh,
        bulan,
        disetujuioleh1,
        andihananto,
        id,
      ];
}
