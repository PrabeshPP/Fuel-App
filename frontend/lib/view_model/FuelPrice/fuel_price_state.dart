part of 'fuel_price_bloc.dart';

abstract class FuelPriceState extends Equatable {
  const FuelPriceState();
  
  @override
  List<Object> get props => [];
}

class FuelPriceInitial extends FuelPriceState {}
