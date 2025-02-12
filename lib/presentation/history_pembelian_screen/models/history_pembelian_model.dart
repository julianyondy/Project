import 'package:equatable/equatable.dart';
import 'purchasehistorylist_item_model.dart';

/// This class defines the variables used in the [history_pembelian_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class HistoryPembelianModel extends Equatable {
  HistoryPembelianModel({this.purchasehistorylistItemList = const []});

  List<PurchasehistorylistItemModel> purchasehistorylistItemList;

  HistoryPembelianModel copyWith(
      {List<PurchasehistorylistItemModel>? purchasehistorylistItemList}) {
    return HistoryPembelianModel(
      purchasehistorylistItemList:
          purchasehistorylistItemList ?? this.purchasehistorylistItemList,
    );
  }

  @override
  List<Object?> get props => [purchasehistorylistItemList];
}

