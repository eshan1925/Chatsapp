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
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.black54),
        ),
      ),
      home: WelcomeScreen(),
    );
  }
}
