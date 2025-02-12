import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [simpanan_sukarela_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class SimpananSukarelaModel extends Equatable {
  SimpananSukarelaModel({this.selectedDateTwo, this.dateTwo = "\"\""}) {
    selectedDateTwo = selectedDateTwo ?? DateTime.now();
  }

  DateTime? selectedDateTwo;

  String dateTwo;

  SimpananSukarelaModel copyWith({
    DateTime? selectedDateTwo,
    String? dateTwo,
  }) {
    return SimpananSukarelaModel(
      selectedDateTwo: selectedDateTwo ?? this.selectedDateTwo,
      dateTwo: dateTwo ?? this.dateTwo,
    );
  }

  @override
  List<Object?> get props => [selectedDateTwo, dateTwo];
}

