import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/sign_in_model.dart';
part 'sign_in_event.dart';
part 'sign_in_state.dart';

/// A bloc that manages the state of a SignIn according to the event that is dispatched to it.
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc(super.initialState) {
    on<SignInInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
  }

  _onInitialize(
    SignInInitialEvent event,
    Emitter<SignInState> emit,
  ) async {
    emit(
      state.copyWith(
        emailController: TextEditingController(),
        languageController: TextEditingController(),
        isShowPassword: true,
      ),
    );
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<SignInState> emit,
  ) {
    emit(state.copyWith(
      isShowPassword: event.value,
    ));
  }
}

