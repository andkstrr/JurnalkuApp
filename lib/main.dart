import 'package:flutter/material.dart';
import 'package:jurnalku_app/screens/splash.dart';

void main() => runApp(MaterialApp(
  home: JurnalkuApp(),
));

class JurnalkuApp extends StatelessWidget {
  const JurnalkuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jurnalku',
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}