import 'package:equatable/equatable.dart';
import 'totalsimpananslider_item_model.dart';

/// This class defines the variables used in the [simpanan_scroll_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class SimpananScrollModel extends Equatable {
  SimpananScrollModel({this.totalsimpanansliderItemList = const []});

  List<TotalsimpanansliderItemModel> totalsimpanansliderItemList;

  SimpananScrollModel copyWith(
      {List<TotalsimpanansliderItemModel>? totalsimpanansliderItemList}) {
    return SimpananScrollModel(
      totalsimpanansliderItemList:
          totalsimpanansliderItemList ?? this.totalsimpanansliderItemList,
    );
  }

  @override
  List<Object?> get props => [totalsimpanansliderItemList];
}

