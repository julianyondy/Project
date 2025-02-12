part of 'home_page_scroll_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomePageScroll widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class HomePageScrollEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the HomePageScroll widget is first created.
class HomePageScrollInitialEvent extends HomePageScrollEvent {
  @override
  List<Object?> get props => [];
}

