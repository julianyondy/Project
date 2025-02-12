part of 'profile_bloc.dart';

/// Represents the state of Profile in the application.

// ignore_for_file: must_be_immutable
class ProfileState extends Equatable {
  ProfileState({this.profileModelObj});

  ProfileModel? profileModelObj;

  @override
  List<Object?> get props => [profileModelObj];
  ProfileState copyWith({ProfileModel? profileModelObj}) {
    return ProfileState(
      profileModelObj: profileModelObj ?? this.profileModelObj,
    );
  }
}

