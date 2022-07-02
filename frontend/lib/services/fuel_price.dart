import 'dart:convert';

import 'package:fuel_prices/model/fuelPrice/fuelprice_model.dart';
import 'package:http/http.dart' as http;

class FetchFuelApi {
  Future getFuelPrice() async {
    //This is the api for our backend server
    const String api = "e48eb50c-c328-11ec-afa9-5a66ba053ac0";
    
    http.Client client = http.Client();
    try {
      var url = Uri.parse("https://evening-temple-86790.herokuapp.com/$api");
      var response = await client.get(url);
      var decodeData = jsonDecode(response.body);
      var dataObject = decodeData["Pokhara, Dang"];
      FuelPrice fuelPrice = FuelPrice.fromJson(dataObject);
      return fuelPrice;
    } catch (err) {
      return "There was an error";
    }
  }
}
