import 'package:flutter/material.dart';
import 'package:flash_chat_application/screens/welcome_screen.dart';
import 'package:flash_chat_application/screens/login_screen.dart';
import 'package:flash_chat_application/screens/registration_screen.dart';
import 'package:flash_chat_application/screens/chat_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
runApp(const FlashChat());
}


class FlashChat extends StatelessWidget {
  const FlashChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'welcome_screen',
      routes: {
          WelcomeScreen.id: (context) => WelcomeScreen(),
          LoginScreen.id: (context) => LoginScreen(),
          RegistrationScreen.id: (context) => RegistrationScreen(),
          ChatScreen.id: (context) => ChatScreen(),

        
      },
        
    );
  }
}
