import 'package:flutter/material.dart';
import 'package:netflix_2/pages/home.dart';
import 'package:netflix_2/pages/loading.dart';
import 'package:netflix_2/pages/onboarding.dart';
import 'package:netflix_2/pages/privacy.dart';
import 'package:netflix_2/pages/sign.dart';
import 'package:netflix_2/pages/signcode.dart';
import 'package:netflix_2/pages/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Netflix_2',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const Loading(),
      routes: {
        '/home': (context) => const Home(),
        '/sign': (context) => const Sign(),
        '/signup': (context) => const SignUp(),
        '/signcode': (context) => const SignCode(),
        '/onboarding': (context) => const Onboarding(),
        '/privacy': (context) => Privacy(),
      },
    
    );
  }
}
