import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fuel_prices/model/fuelPrice/fuelprice_model.dart';
import 'package:fuel_prices/services/fuel_price.dart';
import 'package:fuel_prices/view_model/converter/fuelprice.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  FetchFuelApi fetchFuelApi = FetchFuelApi();
  FuelPrice? fuelPrice;
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    fuelPrice = await fetchFuelApi.getFuelPrice();
    double result = FuelPriceConverter.getPriceInt(fuelPrice!.kerosenePrice);
    print(result);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Text("Hello");
  }
}
