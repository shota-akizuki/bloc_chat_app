import 'package:bloc_chat_app/screens/chat_screen.dart';
import 'package:bloc_chat_app/screens/login_screen.dart';
import 'package:bloc_chat_app/screens/registration_screen.dart';
import 'package:bloc_chat_app/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(ChatApp());

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          textTheme: TextTheme(
            bodyText1: TextStyle(color: Colors.black54),
          ),
          primaryColor: Colors.blue),
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
