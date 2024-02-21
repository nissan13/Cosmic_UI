import 'package:cosmic_ui_firebase/pages/HomePage/homePage.dart';
import 'package:cosmic_ui_firebase/pages/InnerPage/earthPage.dart';
import 'package:cosmic_ui_firebase/pages/LoginPage/loginPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: earthPage(),
    );
  }
}