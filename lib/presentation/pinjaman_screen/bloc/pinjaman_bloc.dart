import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../models/pinjaman_initial_model.dart';
import '../models/pinjaman_model.dart';
part 'pinjaman_event.dart';
part 'pinjaman_state.dart';

/// A bloc that manages the state of a Pinjaman according to the event that is dispatched to it.
class PinjamanBloc extends Bloc<PinjamanEvent, PinjamanState> {
  PinjamanBloc(super.initialState) {
    on<PinjamanInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PinjamanInitialEvent event,
    Emitter<PinjamanState> emit,
  ) async {
    emit(
      state.copyWith(
        employeeNumberInputController: TextEditingController(),
        employeeNameInputController: TextEditingController(),
        loanAmountInputController: TextEditingController(),
        reasonInputController: TextEditingController(),
        interestRateInputController: TextEditingController(),
        totalLoanInputController: TextEditingController(),
        monthlyInstallmentInputController: TextEditingController(),
      ),
    );
    emit(
      state.copyWith(
        pinjamanInitialModelObj: state.pinjamanInitialModelObj?.copyWith(
          dropdownItemList: fillDropdownItemList(),
        ),
      ),
    );
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }
}

