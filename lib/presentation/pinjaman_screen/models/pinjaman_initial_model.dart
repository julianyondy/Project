import 'package:equatable/equatable.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';

/// This class is used in the [pinjaman_initial_page] screen.

// ignore_for_file: must_be_immutable
class PinjamanInitialModel extends Equatable {
  PinjamanInitialModel({this.dropdownItemList = const []});

  List<SelectionPopupModel> dropdownItemList;

  PinjamanInitialModel copyWith({List<SelectionPopupModel>? dropdownItemList}) {
    return PinjamanInitialModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList];
}

