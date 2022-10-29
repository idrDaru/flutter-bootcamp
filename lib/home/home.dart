import 'package:business_card/bmi/index.dart';
import 'package:business_card/clima/index.dart';
import 'package:business_card/coin_ticker/price_screen.dart';
import 'package:business_card/dicee/index.dart';
import 'package:business_card/flash_chat/index.dart';
import 'package:business_card/magic_8_ball/index.dart';
import 'package:business_card/quizzler/index.dart';
import 'package:business_card/xylophone/index.dart';
import 'package:flutter/material.dart';
import 'package:business_card/mi_business_card/index.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BusinessCard(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              ),
              child: Text(
                '6 - Business Card',
                style: TextStyle(
                  color: Colors.teal.shade900,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Dicee(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              ),
              child: Text(
                '7 - Dicee',
                style: TextStyle(
                  color: Colors.teal.shade900,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BallPage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              ),
              child: Text(
                '8 - Magic 8 Ball',
                style: TextStyle(
                  color: Colors.teal.shade900,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Xylophone(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              ),
              child: Text(
                '9 - Xylophone',
                style: TextStyle(
                  color: Colors.teal.shade900,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Quizzler(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              ),
              child: Text(
                '10 - Quizzler',
                style: TextStyle(
                  color: Colors.teal.shade900,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              ),
              child: Text(
                '11 - Destini',
                style: TextStyle(
                  color: Colors.teal.shade900,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Bmi(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              ),
              child: Text(
                '12 - BMI Calculator',
                style: TextStyle(
                  color: Colors.teal.shade900,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => Clima()),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              ),
              child: Text(
                '13 - Clima',
                style: TextStyle(
                  color: Colors.teal.shade900,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => PriceScreen()),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              ),
              child: Text(
                '14 - Coin Ticker',
                style: TextStyle(
                  color: Colors.teal.shade900,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (builder) => FlashChat(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              ),
              child: Text(
                '15 - Flash Chat',
                style: TextStyle(
                  color: Colors.teal.shade900,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
