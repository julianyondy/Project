import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/home_page_scroll_model.dart';
import '../models/produk_item_model.dart';
import '../models/simpanan_item_model.dart';
part 'home_page_scroll_event.dart';
part 'home_page_scroll_state.dart';

/// A bloc that manages the state of a HomePageScroll according to the event that is dispatched to it.
class HomePageScrollBloc
    extends Bloc<HomePageScrollEvent, HomePageScrollState> {
  HomePageScrollBloc(super.initialState) {
    on<HomePageScrollInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomePageScrollInitialEvent event,
    Emitter<HomePageScrollState> emit,
  ) async {
    emit(
      state.copyWith(
        homePageScrollModelObj: state.homePageScrollModelObj?.copyWith(
          simpananItemList: fillSimpananItemList(),
          produkItemList: fillProdukItemList(),
        ),
      ),
    );
  }

  List<SimpananItemModel> fillSimpananItemList() {
    return [
      SimpananItemModel(
          simpananwajib: "Simpanan Wajib",
          saldo: "Saldo",
          rpCounter: "Rp. 500.000"),
      SimpananItemModel(
          simpananwajib: "Simpanan Pokok",
          saldo: "Saldo",
          rpCounter: "Rp. 500.000"),
      SimpananItemModel(
          simpananwajib: "Simpanan Sukarela",
          saldo: "Saldo",
          rpCounter: "Rp. 500.000")
    ];
  }

  List<ProdukItemModel> fillProdukItemList() {
    return [
      ProdukItemModel(namaprodukone: "Madu Pelabo Trigona", harga: "Rp. -"),
      ProdukItemModel(),
      ProdukItemModel(),
      ProdukItemModel(),
      ProdukItemModel()
    ];
  }
}

