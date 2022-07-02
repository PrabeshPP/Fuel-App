class FuelPriceConverter {
  static double getPriceInt(String value) {
    List<String> strList = value.split(" ");
    String price = strList[1];
    double priceDouble = double.parse(price);
    return priceDouble;
  }
}
