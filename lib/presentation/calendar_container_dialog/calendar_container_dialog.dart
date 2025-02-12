import 'package:flutter/material.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import '../../core/app_export.dart';
import 'bloc/calendar_container_bloc.dart';
import 'models/calendar_container_model.dart'; // ignore_for_file: must_be_immutable

class CalendarContainerDialog extends StatelessWidget {
  const CalendarContainerDialog({super.key});

  static Widget builder(BuildContext context) {
    return BlocProvider<CalendarContainerBloc>(
      create: (context) => CalendarContainerBloc(CalendarContainerState(
        calendarContainerModelObj: const CalendarContainerModel(),
      ))
        ..add(CalendarContainerInitialEvent()),
      child: const CalendarContainerDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [_buildCalendarOne(context)],
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildCalendarOne(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: BlocBuilder<CalendarContainerBloc, CalendarContainerState>(
        builder: (context, state) {
          return SizedBox(
            height: 350.h,
            width: 310.h,
            child: CalendarDatePicker2(
              config: CalendarDatePicker2Config(
                calendarType: CalendarDatePicker2Type.single,
                firstDate: DateTime(DateTime.now().year - 5),
                lastDate: DateTime(DateTime.now().year + 5),
                selectedDayHighlightColor: const Color(0XFFFFFFFF),
                centerAlignModePicker: true,
                firstDayOfWeek: 1,
                controlsHeight: 24,
                weekdayLabelTextStyle: TextStyle(
                  color: appTheme.gray90001,
                  fontFamily: 'Epilogue',
                  fontWeight: FontWeight.w500,
                ),
                selectedDayTextStyle: const TextStyle(
                  color: Color(0XFF3461FD),
                  fontFamily: 'Epilogue',
                  fontWeight: FontWeight.w500,
                ),
                controlsTextStyle: TextStyle(
                  color: appTheme.gray90001,
                  fontFamily: 'Epilogue',
                  fontWeight: FontWeight.w400,
                ),
                dayTextStyle: TextStyle(
                  color: appTheme.gray90001.withOpacity(0.3),
                  fontFamily: 'Epilogue',
                  fontWeight: FontWeight.w500,
                ),
                disabledDayTextStyle: TextStyle(
                  color: appTheme.gray90001.withOpacity(0.3),
                  fontFamily: 'Epilogue',
                  fontWeight: FontWeight.w500,
                ),
                weekdayLabels: [
                  "Sun",
                  "Mon",
                  "Tue",
                  "Wed",
                  "Thu",
                  "Fri",
                  "Sat"
                ],
                dayBorderRadius: BorderRadius.circular(
                  20.h,
                ),
              ),
              value: state.selectedDatesFromCalendar ?? [],
              onValueChanged: (dates) {
                state.selectedDatesFromCalendar = dates;
              },
            ),
          );
        },
      ),
    );
  }
}

