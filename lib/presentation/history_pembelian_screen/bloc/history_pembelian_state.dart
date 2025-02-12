part of 'history_pembelian_bloc.dart';

/// Represents the state of HistoryPembelian in the application.

// ignore_for_file: must_be_immutable
class HistoryPembelianState extends Equatable {
  HistoryPembelianState({this.historyPembelianModelObj});

  HistoryPembelianModel? historyPembelianModelObj;

  @override
  List<Object?> get props => [historyPembelianModelObj];
  HistoryPembelianState copyWith(
      {HistoryPembelianModel? historyPembelianModelObj}) {
    return HistoryPembelianState(
      historyPembelianModelObj:
          historyPembelianModelObj ?? this.historyPembelianModelObj,
    );
  }
}

