import 'package:flutter/material.dart';
import 'package:business_card/coin_ticker/coin_data.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String selectedCurrency = 'USD';

  @override
  void initState() {
    super.initState();
    getData();
  }

  DropdownButton<String> AndroidDropdown() {
    List<DropdownMenuItem<String>> dropdownitems = [];

    for (String currency in currenciesList) {
      var newItem = DropdownMenuItem(
        child: Text(currency),
        value: currency,
      );
      dropdownitems.add(newItem);
    }

    return DropdownButton<String>(
      value: selectedCurrency,
      items: dropdownitems,
      onChanged: (value) {
        setState(() {
          selectedCurrency = value.toString();
          getData();
        });
      },
    );
  }

  CupertinoPicker iOSPicker() {
    List<Text> dropdownitems = [];

    for (String currency in currenciesList) {
      var newItem = Text(currency);
      dropdownitems.add(newItem);
    }

    return CupertinoPicker(
      itemExtent: 32.0,
      onSelectedItemChanged: (selectedIndex) {
        setState(() {
          selectedCurrency = currenciesList[selectedIndex];
          getData();
        });
      },
      children: dropdownitems,
    );
  }

  Map<String, String> coinValues = {};
  bool isWaiting = false;

  void getData() async {
    isWaiting = true;
    try {
      var data = await CoinData().getRate(selectedCurrency);
      isWaiting = false;
      setState(() {
        coinValues = data;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text('🤑 Coin Ticker'),
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              CryptoCard(
                rate: isWaiting ? '?' : coinValues['BTC'].toString(),
                crypto: 'BTC',
                selectedCurrency: selectedCurrency,
              ),
              CryptoCard(
                rate: isWaiting ? '?' : coinValues['ETH'].toString(),
                crypto: 'ETH',
                selectedCurrency: selectedCurrency,
              ),
              CryptoCard(
                rate: isWaiting ? '?' : coinValues['LTC'].toString(),
                crypto: 'LTC',
                selectedCurrency: selectedCurrency,
              ),
            ],
          ),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: Platform.isIOS ? iOSPicker() : AndroidDropdown(),
          ),
        ],
      ),
    );
  }
}

class CryptoCard extends StatelessWidget {
  const CryptoCard(
      {super.key,
      required this.rate,
      required this.crypto,
      required this.selectedCurrency});

  final String rate;
  final String selectedCurrency;
  final String crypto;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
      child: Card(
        color: Colors.lightBlueAccent,
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
          child: Text(
            '1 $crypto = $rate $selectedCurrency',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
