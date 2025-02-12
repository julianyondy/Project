import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/history_pembelian_model.dart';
import '../models/purchasehistorylist_item_model.dart';
part 'history_pembelian_event.dart';
part 'history_pembelian_state.dart';

/// A bloc that manages the state of a HistoryPembelian according to the event that is dispatched to it.
class HistoryPembelianBloc
    extends Bloc<HistoryPembelianEvent, HistoryPembelianState> {
  HistoryPembelianBloc(super.initialState) {
    on<HistoryPembelianInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HistoryPembelianInitialEvent event,
    Emitter<HistoryPembelianState> emit,
  ) async {
    emit(
      state.copyWith(
        historyPembelianModelObj: state.historyPembelianModelObj?.copyWith(
          purchasehistorylistItemList: fillPurchasehistorylistItemList(),
        ),
      ),
    );
  }

  List<PurchasehistorylistItemModel> fillPurchasehistorylistItemList() {
    return [
      PurchasehistorylistItemModel(
          tanggal: "20 Desember 2023",
          selesai: "Selesai",
          weight: "Piattos 75gram",
          barangCounter: "2 barang",
          totalharga: "Total Harga",
          rpCounter: "Rp 15.600"),
      PurchasehistorylistItemModel(
          tanggal: "20 Desember 2023",
          selesai: "Selesai",
          weight: "Piattos 75gram",
          barangCounter: "2 barang",
          totalharga: "Total Harga",
          rpCounter: "Rp 15.600"),
      PurchasehistorylistItemModel()
    ];
  }
}

