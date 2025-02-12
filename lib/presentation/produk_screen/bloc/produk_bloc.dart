import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/productgrid_item_model.dart';
import '../models/produk_model.dart';
part 'produk_event.dart';
part 'produk_state.dart';

/// A bloc that manages the state of a Produk according to the event that is dispatched to it.
class ProdukBloc extends Bloc<ProdukEvent, ProdukState> {
  ProdukBloc(super.initialState) {
    on<ProdukInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProdukInitialEvent event,
    Emitter<ProdukState> emit,
  ) async {
    emit(
      state.copyWith(
        produkModelObj: state.produkModelObj?.copyWith(
          productgridItemList: fillProductgridItemList(),
        ),
      ),
    );
  }

  List<ProductgridItemModel> fillProductgridItemList() {
    return [
      ProductgridItemModel(weight: "Piattos 75gram", rpCounter: "Rp. 7.800"),
      ProductgridItemModel(weight: "Piattos 75gram", rpCounter: "Rp. 7.800"),
      ProductgridItemModel(weight: "Piattos 75gram", rpCounter: "Rp. 7.800"),
      ProductgridItemModel(weight: "Piattos 75gram", rpCounter: "Rp. 7.800"),
      ProductgridItemModel(weight: "Piattos 75gram", rpCounter: "Rp. 7.800"),
      ProductgridItemModel(weight: "Piattos 75gram", rpCounter: "Rp. 7.800")
    ];
  }
}

