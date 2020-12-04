import 'package:bloc_chat_app/screens/chat_screen.dart';
import 'package:bloc_chat_app/screens/login_screen.dart';
import 'package:bloc_chat_app/screens/registration_screen.dart';
import 'package:bloc_chat_app/screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes: <String, WidgetBuilder>{
        WelcomeScreen.id: (BuildContext context) => WelcomeScreen(),
        LoginScreen.id: (BuildContext context) => LoginScreen(),
        RegistrationScreen.id: (BuildContext context) => RegistrationScreen(),
        ChatScreen.id: (BuildContext context) => ChatScreen(),
      },
    );
  }
}
