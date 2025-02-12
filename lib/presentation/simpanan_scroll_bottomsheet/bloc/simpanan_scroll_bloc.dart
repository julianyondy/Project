import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/simpanan_scroll_model.dart';
import '../models/totalsimpananslider_item_model.dart';
part 'simpanan_scroll_event.dart';
part 'simpanan_scroll_state.dart';

/// A bloc that manages the state of a SimpananScroll according to the event that is dispatched to it.
class SimpananScrollBloc
    extends Bloc<SimpananScrollEvent, SimpananScrollState> {
  SimpananScrollBloc(super.initialState) {
    on<SimpananScrollInitialEvent>(_onInitialize);
    on<ChangeSliderIndexEvent>(_changeSliderIndex);
  }

  _onInitialize(
    SimpananScrollInitialEvent event,
    Emitter<SimpananScrollState> emit,
  ) async {
    emit(
      state.copyWith(
        sliderIndex: 0,
      ),
    );
    emit(
      state.copyWith(
        simpananScrollModelObj: state.simpananScrollModelObj?.copyWith(
          totalsimpanansliderItemList: fillTotalsimpanansliderItemList(),
        ),
      ),
    );
  }

  _changeSliderIndex(
    ChangeSliderIndexEvent event,
    Emitter<SimpananScrollState> emit,
  ) {
    emit(state.copyWith(
      sliderIndex: event.value,
    ));
  }

  List<TotalsimpanansliderItemModel> fillTotalsimpanansliderItemList() {
    return [
      TotalsimpanansliderItemModel(
          totalsimpanan: "Total Simpanan Wajib", rp2000000: "Rp. 2.000.000")
    ];
  }
}

