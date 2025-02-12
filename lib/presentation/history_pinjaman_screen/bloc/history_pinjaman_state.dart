part of 'history_pinjaman_bloc.dart';

/// Represents the state of HistoryPinjaman in the application.

// ignore_for_file: must_be_immutable
class HistoryPinjamanState extends Equatable {
  HistoryPinjamanState({this.historyPinjamanModelObj});

  HistoryPinjamanModel? historyPinjamanModelObj;

  @override
  List<Object?> get props => [historyPinjamanModelObj];
  HistoryPinjamanState copyWith(
      {HistoryPinjamanModel? historyPinjamanModelObj}) {
    return HistoryPinjamanState(
      historyPinjamanModelObj:
          historyPinjamanModelObj ?? this.historyPinjamanModelObj,
    );
  }
}

