import 'dart:async';
import 'package:flutter/material.dart';
import 'package:posttest7_058_rista/landingPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    displaySplashScreen();
  }

  displaySplashScreen() {
    var duration = Duration(seconds: 2);
    Timer(duration, () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_){
        return const landingPage();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 255, 249, 237),
              Color.fromARGB(255, 176, 153, 126)
            ]
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/wool.png",
              height: 50.0,
              width: 50.0,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Fabric Apps",
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}