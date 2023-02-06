import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hackathon/firebase_options.dart';
import 'package:hackathon/views/cart.dart';
import 'package:hackathon/views/checkout.dart';
import 'package:hackathon/views/home.dart';
import 'package:hackathon/views/login.dart';
import 'package:hackathon/views/signup.dart';
import 'package:hackathon/views/single_product.dart';
import 'package:hackathon/views/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
