import 'package:equatable/equatable.dart';
import 'productgrid_item_model.dart';

/// This class defines the variables used in the [produk_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class ProdukModel extends Equatable {
  ProdukModel({this.productgridItemList = const []});

  List<ProductgridItemModel> productgridItemList;

  ProdukModel copyWith({List<ProductgridItemModel>? productgridItemList}) {
    return ProdukModel(
      productgridItemList: productgridItemList ?? this.productgridItemList,
    );
  }

  @override
  List<Object?> get props => [productgridItemList];
}

