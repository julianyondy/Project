import 'package:flutter/material.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/calendar_container_model.dart';
part 'calendar_container_event.dart';
part 'calendar_container_state.dart';

/// A bloc that manages the state of a CalendarContainer according to the event that is dispatched to it.
class CalendarContainerBloc
    extends Bloc<CalendarContainerEvent, CalendarContainerState> {
  CalendarContainerBloc(super.initialState) {
    on<CalendarContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CalendarContainerInitialEvent event,
    Emitter<CalendarContainerState> emit,
  ) async {}
}

