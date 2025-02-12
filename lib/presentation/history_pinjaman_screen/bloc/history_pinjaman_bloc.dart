import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/history_pinjaman_model.dart';
import '../models/loanlist_item_model.dart';
part 'history_pinjaman_event.dart';
part 'history_pinjaman_state.dart';

/// A bloc that manages the state of a HistoryPinjaman according to the event that is dispatched to it.
class HistoryPinjamanBloc
    extends Bloc<HistoryPinjamanEvent, HistoryPinjamanState> {
  HistoryPinjamanBloc(super.initialState) {
    on<HistoryPinjamanInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HistoryPinjamanInitialEvent event,
    Emitter<HistoryPinjamanState> emit,
  ) async {
    emit(
      state.copyWith(
        historyPinjamanModelObj: state.historyPinjamanModelObj?.copyWith(
          loanlistItemList: fillLoanlistItemList(),
        ),
      ),
    );
  }

  List<LoanlistItemModel> fillLoanlistItemList() {
    return [
      LoanlistItemModel(
          label: "Pinjaman Jangka Panjang",
          selesai: "Selesai",
          pokokpinjaman: "Pokok Pinjaman",
          rpCounter: "Rp. 1.000.000",
          pokokpinjaman1: "Total Pinjaman",
          rpcounterOne: "Rp 3.000.000",
          durasi: "Durasi",
          bulanCounter: "12 Bulan",
          disetujuioleh: "Selesai pada",
          bulan: "20 Desember 2023",
          disetujuioleh1: "Disetujui oleh",
          andihananto: "Andi Hananto"),
      LoanlistItemModel(
          label: "Pinjaman Jangka Panjang",
          selesai: "Selesai",
          pokokpinjaman: "Pokok Pinjaman",
          rpCounter: "Rp. 1.000.000",
          pokokpinjaman1: "Total Pinjaman",
          rpcounterOne: "Rp 3.000.000",
          durasi: "Durasi",
          bulanCounter: "12 Bulan",
          disetujuioleh: "Selesai pada",
          bulan: "20 Desember 2023",
          disetujuioleh1: "Disetujui oleh",
          andihananto: "Andi Hananto"),
      LoanlistItemModel(
          label: "Pinjaman Jangka Panjang",
          selesai: "Selesai",
          pokokpinjaman: "Total Pinjaman",
          rpCounter: "Rp 3.000.000",
          pokokpinjaman1: "Pokok Pinjaman",
          rpcounterOne: "Rp. 1.000.000",
          durasi: "Durasi",
          bulanCounter: "12 Bulan",
          disetujuioleh: "Selesai pada",
          bulan: "20 Desember 2023",
          disetujuioleh1: "Disetujui oleh",
          andihananto: "Andi Hananto")
    ];
  }
}

