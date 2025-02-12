import 'package:equatable/equatable.dart';
import 'loanlist_item_model.dart';

/// This class defines the variables used in the [history_pinjaman_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class HistoryPinjamanModel extends Equatable {
  HistoryPinjamanModel({this.loanlistItemList = const []});

  List<LoanlistItemModel> loanlistItemList;

  HistoryPinjamanModel copyWith({List<LoanlistItemModel>? loanlistItemList}) {
    return HistoryPinjamanModel(
      loanlistItemList: loanlistItemList ?? this.loanlistItemList,
    );
  }

  @override
  List<Object?> get props => [loanlistItemList];
}

