

import 'package:json_annotation/json_annotation.dart';

part 'fuelprice_model.g.dart';

@JsonSerializable()
class FuelPrice {
  @JsonKey(name:"Petrol")
  final String petrolPrice;
  @JsonKey(name:"Diesel")
  final String dieselPrice;
  @JsonKey(name:"Kerosene")
  final String kerosenePrice;
  @JsonKey(name:"Gas Prices")
  final String lpgGas;

  FuelPrice(
      {required this.petrolPrice,
      required this.dieselPrice,
      required this.kerosenePrice,
      required this.lpgGas});

  factory FuelPrice.fromJson(Map<String, dynamic> json) =>
     _$FuelPriceFromJson(json);

  Map<dynamic, dynamic> toJson() => _$FuelPriceToJson(this);
}
