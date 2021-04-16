import 'package:flutter/material.dart';
import 'package:chatsapp/screens/welcome_screen.dart';
import 'package:chatsapp/screens/login_screen.dart';
import 'package:chatsapp/screens/registration_screen.dart';
import 'package:chatsapp/screens/chat_screen.dart';

void main() => runApp(Chatsapp());

class Chatsapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        ChatScreen.id: (context) => ChatScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
      },
    );
  }
}
