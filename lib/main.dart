import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kinwae_test/splashscreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kinwae Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
    );
  }
}


class Cards extends StatelessWidget {
  final String title;
  final String iconPath;
  final Color color;
  final VoidCallback onTap;
  final Color textColor;
  final bool showNaira;
  final String subtitle;
  final Color iconColor;
  const Cards({
    Key key,
    this.title,
    this.showNaira,
    this.iconPath,
    this.iconColor,
    this.color,
    this.textColor,
    this.onTap,
    this.subtitle,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey[400],
            blurRadius: 3,
            offset: Offset(0, 2),
          )
        ],
        color: color,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Positioned(
              height: 200,
              left: 30,
              child: Image.asset(
                "assets/images/credit_card_bg.png",
                fit: BoxFit.contain,
              )),
          Container(
              child: Positioned(
            bottom: 75,
            top: 0,
            left: 15,
            child: SvgPicture.asset(
              iconPath,
              height: 25,
              color: iconColor,
            ),
          )),
          Positioned(
            left: 15,
            right: 0,
            top: 90,
            bottom: 0,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          fontFamily: "FuturaMain",
                          fontSize: 10,
                          color: textColor),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        showNaira
                            ? SvgPicture.asset(
                                "assets/images/naira.svg",
                                color: Colors.white,
                                height: 13,
                              )
                            : Text(""),
                        SizedBox(width: 1),
                        Text(
                          subtitle,
                          style: TextStyle(
                              fontFamily: "FuturaMain",
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: iconColor),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
