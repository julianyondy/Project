import 'package:equatable/equatable.dart';

/// This class is used in the [simpanan_item_widget] screen.

// ignore_for_file: must_be_immutable
class SimpananItemModel extends Equatable {
  SimpananItemModel({this.simpananwajib, this.saldo, this.rpCounter, this.id}) {
    simpananwajib = simpananwajib ?? "Simpanan Wajib";
    saldo = saldo ?? "Saldo";
    rpCounter = rpCounter ?? "Rp. 500.000";
    id = id ?? "";
  }

  String? simpananwajib;

  String? saldo;

  String? rpCounter;

  String? id;

  SimpananItemModel copyWith({
    String? simpananwajib,
    String? saldo,
    String? rpCounter,
    String? id,
  }) {
    return SimpananItemModel(
      simpananwajib: simpananwajib ?? this.simpananwajib,
      saldo: saldo ?? this.saldo,
      rpCounter: rpCounter ?? this.rpCounter,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [simpananwajib, saldo, rpCounter, id];
}

