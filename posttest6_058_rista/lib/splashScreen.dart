import 'dart:async';
import 'package:flutter/material.dart';
import 'package:posttest6_058_rista/landingPage.dart';
import 'package:posttest6_058_rista/main.dart';

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
    var duration = Duration(seconds: 5);
    Timer(duration, () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_){
        return const halamanLanding();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/clothes.png",
              width: MediaQuery.of(context).size.width/2,
              height: MediaQuery.of(context).size.height/2,
            ),
            Text(
              "Fabric Apps",
              style: Theme.of(context).textTheme.displayMedium,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}