import 'package:business_card/clima/screens/loading_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class Clima extends StatelessWidget {
  const Clima({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clima'),
      ),
      body: LoadingScreen(),
    );
  }
}
