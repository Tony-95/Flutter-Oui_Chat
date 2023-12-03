import 'package:flutter/material.dart';
import 'package:oui_chat/views/register.dart';
import 'package:oui_chat/views/login.dart';
import 'package:oui_chat/firebase_options.dart';
import 'package:oui_chat/services/auth/login_or_register.dart';
import 'package:oui_chat/services/auth/auth_checker.dart';
import 'package:oui_chat/services/auth/auth_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
      ChangeNotifierProvider(
      create: (context) => AuthService(),
      child: const MyApp(),
      ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:AuthGate(),
    );
  }
}

