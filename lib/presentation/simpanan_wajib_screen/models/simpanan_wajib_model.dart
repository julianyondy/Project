import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [simpanan_wajib_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class SimpananWajibModel extends Equatable {
  SimpananWajibModel({this.selectedDateTwo, this.dateTwo = "\"\""}) {
    selectedDateTwo = selectedDateTwo ?? DateTime.now();
  }

  DateTime? selectedDateTwo;

  String dateTwo;

  SimpananWajibModel copyWith({
    DateTime? selectedDateTwo,
    String? dateTwo,
  }) {
    return SimpananWajibModel(
      selectedDateTwo: selectedDateTwo ?? this.selectedDateTwo,
      dateTwo: dateTwo ?? this.dateTwo,
    );
  }

  @override
  List<Object?> get props => [selectedDateTwo, dateTwo];
}

