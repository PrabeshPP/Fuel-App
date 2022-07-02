// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fuelprice_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FuelPrice _$FuelPriceFromJson(Map<String, dynamic> json) => FuelPrice(
      petrolPrice: json['Petrol'] as String,
      dieselPrice: json['Diesel'] as String,
      kerosenePrice: json['Kerosene'] as String,
      lpgGas: json['Gas Prices'] as String,
    );

Map<String, dynamic> _$FuelPriceToJson(FuelPrice instance) => <String, dynamic>{
      'Petrol': instance.petrolPrice,
      'Diesel': instance.dieselPrice,
      'Kerosene': instance.kerosenePrice,
      'Gas Prices': instance.lpgGas,
    };
