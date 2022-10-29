import 'package:business_card/coin_ticker/price_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class CoinTicker extends StatelessWidget {
  const CoinTicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PriceScreen(),
    );
  }
}
