part of 'pinjaman_bloc.dart';

/// Represents the state of Pinjaman in the application.

// ignore_for_file: must_be_immutable
class PinjamanState extends Equatable {
  PinjamanState(
      {this.employeeNumberInputController,
      this.employeeNameInputController,
      this.loanAmountInputController,
      this.reasonInputController,
      this.interestRateInputController,
      this.totalLoanInputController,
      this.monthlyInstallmentInputController,
      this.selectedDropDownValue,
      this.pinjamanInitialModelObj,
      this.pinjamanModelObj});

  TextEditingController? employeeNumberInputController;

  TextEditingController? employeeNameInputController;

  TextEditingController? loanAmountInputController;

  TextEditingController? reasonInputController;

  TextEditingController? interestRateInputController;

  TextEditingController? totalLoanInputController;

  TextEditingController? monthlyInstallmentInputController;

  SelectionPopupModel? selectedDropDownValue;

  PinjamanModel? pinjamanModelObj;

  PinjamanInitialModel? pinjamanInitialModelObj;

  @override
  List<Object?> get props => [
        employeeNumberInputController,
        employeeNameInputController,
        loanAmountInputController,
        reasonInputController,
        interestRateInputController,
        totalLoanInputController,
        monthlyInstallmentInputController,
        selectedDropDownValue,
        pinjamanInitialModelObj,
        pinjamanModelObj
      ];
  PinjamanState copyWith({
    TextEditingController? employeeNumberInputController,
    TextEditingController? employeeNameInputController,
    TextEditingController? loanAmountInputController,
    TextEditingController? reasonInputController,
    TextEditingController? interestRateInputController,
    TextEditingController? totalLoanInputController,
    TextEditingController? monthlyInstallmentInputController,
    SelectionPopupModel? selectedDropDownValue,
    PinjamanInitialModel? pinjamanInitialModelObj,
    PinjamanModel? pinjamanModelObj,
  }) {
    return PinjamanState(
      employeeNumberInputController:
          employeeNumberInputController ?? this.employeeNumberInputController,
      employeeNameInputController:
          employeeNameInputController ?? this.employeeNameInputController,
      loanAmountInputController:
          loanAmountInputController ?? this.loanAmountInputController,
      reasonInputController:
          reasonInputController ?? this.reasonInputController,
      interestRateInputController:
          interestRateInputController ?? this.interestRateInputController,
      totalLoanInputController:
          totalLoanInputController ?? this.totalLoanInputController,
      monthlyInstallmentInputController: monthlyInstallmentInputController ??
          this.monthlyInstallmentInputController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      pinjamanInitialModelObj:
          pinjamanInitialModelObj ?? this.pinjamanInitialModelObj,
      pinjamanModelObj: pinjamanModelObj ?? this.pinjamanModelObj,
    );
  }
}

