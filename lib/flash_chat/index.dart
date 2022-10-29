import 'package:business_card/flash_chat/screens/chat_screen.dart';
import 'package:business_card/flash_chat/screens/login_screen.dart';
import 'package:business_card/flash_chat/screens/registration_screen.dart';
import 'package:business_card/flash_chat/screens/welcome_screen.dart';
import 'package:business_card/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class FlashChat extends StatelessWidget {
  const FlashChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Colors.black54,
          ),
        ),
      ),
      // home: WelcomeScreen(),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}
