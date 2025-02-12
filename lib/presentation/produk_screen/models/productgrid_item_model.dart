import 'package:equatable/equatable.dart';

/// This class is used in the [productgrid_item_widget] screen.

// ignore_for_file: must_be_immutable
class ProductgridItemModel extends Equatable {
  ProductgridItemModel({this.weight, this.rpCounter, this.id}) {
    weight = weight ?? "Piattos 75gram";
    rpCounter = rpCounter ?? "Rp. 7.800";
    id = id ?? "";
  }

  String? weight;

  String? rpCounter;

  String? id;

  ProductgridItemModel copyWith({
    String? weight,
    String? rpCounter,
    String? id,
  }) {
    return ProductgridItemModel(
      weight: weight ?? this.weight,
      rpCounter: rpCounter ?? this.rpCounter,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [weight, rpCounter, id];
}

