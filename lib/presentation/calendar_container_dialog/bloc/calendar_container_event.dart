part of 'calendar_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CalendarContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class CalendarContainerEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the CalendarContainer widget is first created.
class CalendarContainerInitialEvent extends CalendarContainerEvent {
  @override
  List<Object?> get props => [];
}

