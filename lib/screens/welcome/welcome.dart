import 'package:flutter_auth_tut/screens/welcome/sign_in.dart';
import 'package:flutter_auth_tut/screens/welcome/sign_up.dart';
import 'package:flutter_auth_tut/shared/styled_text.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const StyledAppBarText('Flutter Auth'),
        backgroundColor: Colors.blue[500],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 16),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              StyledHeading('Welcome.'),
        
              // sign up screen
              SignInForm(),

              // sign in screen
              SignUpForm(),
            ]
          )
        ),
      ),
    );
  }
}