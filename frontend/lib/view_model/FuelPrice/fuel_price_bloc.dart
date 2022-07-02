import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'fuel_price_event.dart';
part 'fuel_price_state.dart';

class FuelPriceBloc extends Bloc<FuelPriceEvent, FuelPriceState> {
  FuelPriceBloc() : super(FuelPriceInitial()) {
    on<FuelPriceEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
