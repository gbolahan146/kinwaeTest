import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kinwae_test/responsiveness.dart';

class ProductModel {
  final String imagePath;
  final String price;
  final String avatarURL;
  final String saved;

  ProductModel( {this.saved,this.imagePath, this.price, this.avatarURL});
}

List products = [
  ProductModel(
    imagePath: "assets/images/laptop.png",
    price: "2,000",
    saved: "200",
    avatarURL: "MacBook Pro Laptop",
  ),
  ProductModel(
    imagePath: "assets/images/car.png",
    price: "40,000",
    saved: "400",
    avatarURL: "Cars",
  ),
  ProductModel(
    imagePath: "assets/images/life.png",
    price: "90,000",
    avatarURL: "Life",
    saved: "300"
  ),
  ProductModel(
    imagePath: "assets/images/beaut.png",
    price: "20,000",
    saved: "200",
    avatarURL: "Beauty",
  ),
   ProductModel(
    imagePath: "assets/images/house1.png",
    price: "20,000",
    saved: "200",
    avatarURL: "Home",
  ),
];

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
            top: 80,
            bottom: 0,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        //  fontFamily: "FuturaMain",
                          fontSize: McGyver.textSize(context, 1.3),
                          color: textColor),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        showNaira
                            ? SvgPicture.asset(
                                "assets/images/naira.svg",
                                color: Colors.white,
                                height: 12,
                              )
                            : Text(""),
                        SizedBox(width: 1),
                        Text(
                          subtitle,
                          style: TextStyle(
                             // fontFamily: "FuturaMain",
                              fontSize: 16,
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
