import 'dart:async';
import 'package:flutter/material.dart';
import 'package:kinwae_test/widgets/bottomNav.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 5);

    return Timer(duration, () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => BottomNavScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff330065),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                padding: const EdgeInsets.all(30),
                child: Column(
                  children: [
                    Text(
                      "Kinwae App",
                      style: TextStyle(
                          fontSize: 34,
                          fontFamily: "FuturaBook",
                          color: Colors.white),
                    ),
                    Text(
                      "Best at it!",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "FuturaBook",
                          fontSize: 18),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
