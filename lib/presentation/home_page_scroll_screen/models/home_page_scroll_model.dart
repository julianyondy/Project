import 'package:equatable/equatable.dart';
import 'produk_item_model.dart';
import 'simpanan_item_model.dart';

/// This class defines the variables used in the [home_page_scroll_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class HomePageScrollModel extends Equatable {
  HomePageScrollModel(
      {this.simpananItemList = const [], this.produkItemList = const []});

  List<SimpananItemModel> simpananItemList;

  List<ProdukItemModel> produkItemList;

  HomePageScrollModel copyWith({
    List<SimpananItemModel>? simpananItemList,
    List<ProdukItemModel>? produkItemList,
  }) {
    return HomePageScrollModel(
      simpananItemList: simpananItemList ?? this.simpananItemList,
      produkItemList: produkItemList ?? this.produkItemList,
    );
  }

  @override
  List<Object?> get props => [simpananItemList, produkItemList];
}

