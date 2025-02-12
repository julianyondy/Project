part of 'home_page_scroll_bloc.dart';

/// Represents the state of HomePageScroll in the application.

// ignore_for_file: must_be_immutable
class HomePageScrollState extends Equatable {
  HomePageScrollState({this.homePageScrollModelObj});

  HomePageScrollModel? homePageScrollModelObj;

  @override
  List<Object?> get props => [homePageScrollModelObj];
  HomePageScrollState copyWith({HomePageScrollModel? homePageScrollModelObj}) {
    return HomePageScrollState(
      homePageScrollModelObj:
          homePageScrollModelObj ?? this.homePageScrollModelObj,
    );
  }
}

