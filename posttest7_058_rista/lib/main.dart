import 'package:flutter/material.dart';
import 'package:posttest7_058_rista/landingPage.dart';
import 'package:posttest7_058_rista/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Color.fromARGB(255, 255, 249, 237),
        )
      ),
      home: SplashScreen(),
    );
  }
}
