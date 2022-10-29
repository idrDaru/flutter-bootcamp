import 'dart:convert';
import 'package:http/http.dart' as http;

const apiKey = '36847558-9F2D-4D12-89E7-18958C7E4A34';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

class CoinData {
  // CoinData(this.url);
  // final Uri url;

  // Future getData(Uri url) async {
  //   http.Response response = await http.get(url);
  //   if (response.statusCode == 200) {
  //     String data = response.body;
  //     return jsonDecode(data);
  //   } else {
  //     print(response.statusCode);
  //   }
  // }

  Future getRate(String currency) async {
    Map<String, String> cryptoPrices = {};
    for (String crypto in cryptoList) {
      http.Response response = await http.get(
        Uri.https(
          'rest.coinapi.io',
          '/v1/exchangerate/$crypto/$currency',
          {
            'apikey': apiKey,
          },
        ),
      );
      if (response.statusCode == 200) {
        var decodedData = jsonDecode(response.body);
        double lastPrice = decodedData['rate'];
        cryptoPrices[crypto] = lastPrice.toStringAsFixed(0);
      } else {
        print(response.statusCode);
      }
    }
    return cryptoPrices;
  }
}
