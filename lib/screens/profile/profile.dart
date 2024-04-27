import 'package:flutter/material.dart';
import 'package:flutter_auth_tut/models/app_user.dart';
import 'package:flutter_auth_tut/services/auth_service.dart';
import 'package:flutter_auth_tut/shared/styled_button.dart';
import 'package:flutter_auth_tut/shared/styled_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key, required this.user});

  final AppUser user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const StyledAppBarText('Your Profile'),
        backgroundColor: Colors.blue[500],
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const StyledHeading('Profile'),
            const SizedBox(height: 16),

            // output user email here later#
            StyledBodyText('Welcome to your profile, ${user.email}'),
            const SizedBox(height: 16),

            StyledButton(
              onPressed: () {
                AuthService.signOut();
              } , 
              child: const StyledButtonText('Log out'),
            )
          ],
        ),
      ),
    );
  }
}