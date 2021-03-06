import 'package:chatsapp/screens/Chatheads.dart';
import 'package:flutter/material.dart';
import 'package:chatsapp/screens/welcome_screen.dart';
import 'package:chatsapp/screens/login_screen.dart';
import 'package:chatsapp/screens/registration_screen.dart';
import 'package:chatsapp/screens/chat_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  // Ensure that Firebase is initialized
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize Firebase
  await Firebase.initializeApp();
  //
  runApp(Chatsapp());
}

class Chatsapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      theme: ThemeData.dark(),
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        ChatHead.id: (context) => ChatHead(),
        ChatScreen.id: (context) => ChatScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
      },
    );
  }
}

class Bumblebee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
