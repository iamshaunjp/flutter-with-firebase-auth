import 'package:flutter/material.dart';
import 'package:flutter_auth_tut/models/app_user.dart';
import 'package:flutter_auth_tut/providers/auth_provider.dart';
import 'package:flutter_auth_tut/screens/profile/profile.dart';
import 'package:flutter_auth_tut/screens/welcome/welcome.dart';

// firebase
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: Consumer(
        builder: (context, ref, child) {
          final AsyncValue<AppUser?> user = ref.watch(authProvider);
          
          return user.when(
            data: (user) {
              if (user == null) {
                return const WelcomeScreen();
              }
              return ProfileScreen();
            }, 
            error: (error, __) => const Text('error loading auth status.'), 
            loading: () => const Text('loading...'),
          );
        }
      ),
    );
  }
}