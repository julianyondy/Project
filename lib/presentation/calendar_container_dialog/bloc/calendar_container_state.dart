part of 'calendar_container_bloc.dart';

/// Represents the state of CalendarContainer in the application.

// ignore_for_file: must_be_immutable
class CalendarContainerState extends Equatable {
  CalendarContainerState(
      {this.selectedDatesFromCalendar, this.calendarContainerModelObj});

  CalendarContainerModel? calendarContainerModelObj;

  List<DateTime?>? selectedDatesFromCalendar;

  @override
  List<Object?> get props =>
      [selectedDatesFromCalendar, calendarContainerModelObj];
  CalendarContainerState copyWith({
    List<DateTime?>? selectedDatesFromCalendar,
    CalendarContainerModel? calendarContainerModelObj,
  }) {
    return CalendarContainerState(
      selectedDatesFromCalendar:
          selectedDatesFromCalendar ?? this.selectedDatesFromCalendar,
      calendarContainerModelObj:
          calendarContainerModelObj ?? this.calendarContainerModelObj,
    );
  }
}

