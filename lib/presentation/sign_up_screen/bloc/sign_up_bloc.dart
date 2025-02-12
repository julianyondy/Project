import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/sign_up_model.dart';
part 'sign_up_event.dart';
part 'sign_up_state.dart';

/// A bloc that manages the state of a SignUp according to the event that is dispatched to it.
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc(super.initialState) {
    on<SignUpInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _onInitialize(
    SignUpInitialEvent event,
    Emitter<SignUpState> emit,
  ) async {
    emit(
      state.copyWith(
        nameInputController: TextEditingController(),
        emailInputController: TextEditingController(),
        nikInputController: TextEditingController(),
        isShowPassword: true,
        termsAgreement: false,
      ),
    );
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.approvalScreen,
      );
    });
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<SignUpState> emit,
  ) {
    emit(state.copyWith(
      isShowPassword: event.value,
    ));
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<SignUpState> emit,
  ) {
    emit(state.copyWith(
      termsAgreement: event.value,
    ));
  }
}

