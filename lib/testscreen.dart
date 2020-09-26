import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fdottedline/fdottedline.dart';
import 'package:kinwae_test/product_card.dart';
import 'package:kinwae_test/responsiveness.dart';

class TestScreen extends StatefulWidget {
  @override
  _TestScreenState createState() => _TestScreenState();
}

String user = "Jerryson";

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // bottomNavigationBar: BottomNav(),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(76.0),
          child: Container(
            decoration: BoxDecoration(
                border: Border(
              bottom: BorderSide(width: 1.0, color: Color(0xffebe6f0)),
            )),
            child: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              automaticallyImplyLeading: false,
              title: Padding(
                padding: EdgeInsets.only(
                  top: 20,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 18,
                    ),
                    Container(
                      height: 50,
                      width: 30,
                      child: CircleAvatar(
                          backgroundColor: Color(0xffebe6f0),
                          child: SvgPicture.asset(
                            "assets/images/user.svg",
                            height: 15,
                            color: Color(0xff9474ae),
                          )),
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    Text(
                      "Hi,",
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: "FuturaMain",
                          color: Color(0xff330065)),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      user,
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: "FuturaBold",
                          fontWeight: FontWeight.w700,
                          color: Color(0xff330065)),
                    ),
                    Spacer(),
                    _buildNotify()
                  ],
                ),
              ),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 34.0,
                right: 34,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/images/naira.svg",
                        height: 18,
                      ),
                      Text(
                        "45,900.00",
                        style: TextStyle(
                            color: Color(0xff330065),
                            fontFamily: "FuturaBook",
                            fontWeight: FontWeight.w600,
                            fontSize: McGyver.textSize(context, 3.9)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Insurance Balance",
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: "FuturaBook",
                        fontWeight: FontWeight.w600,
                        color: Color(0xffad99c1)),
                  ),
                  Container(
                    width: 370,
                    child: GridView.count(
                      physics:
                          ScrollPhysics(), // to disable GridView's scrolling
                      shrinkWrap: true,
                      padding:
                          EdgeInsets.symmetric(vertical: 14, horizontal: 0),
                      mainAxisSpacing: 40,
                      crossAxisSpacing: 17,
                      crossAxisCount: 2,
                      children: [
                        Cards(
                          title: "Total Amount Withdrawn",
                          iconColor: Color(0xffffffff),
                          color: Color(0xff330065),
                          textColor: Color(0xffad99c1),
                          iconPath: "assets/images/download_outline.svg",
                          subtitle: "25,900.00",
                          showNaira: true,
                        ),
                        Cards(
                          title: "Active Insurance Plans",
                          iconColor: Color(0xff000000),
                          color: Color(0xffff978b),
                          iconPath: "assets/images/insurance2.svg",
                          subtitle: "10",
                          textColor: Color(0xff7a514c),
                          showNaira: false,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border(
                top: BorderSide(width: 1.0, color: Color(0xffebe6f0)),
              )),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 32.0,
                      top: 20,
                      right: 28,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SvgPicture.asset(
                          "assets/images/insurance_red.svg",
                          height: 18,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Your Active Plans",
                          style: TextStyle(
                              fontFamily: "FuturaBook",
                              letterSpacing: 0.9,
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: Color(0xffb7b7b7)),
                        ),
                        Spacer(),
                        Text(
                          "View all",
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: "FuturaBook",
                              fontWeight: FontWeight.w600,
                              color: Color(0xff330065)),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        SvgPicture.asset(
                          "assets/images/forward.svg",
                          height: 18,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 34.0, top: 20),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            child: FDottedLine(
                              color: Color(0xffff978b),
                              height: 100.0,
                              width: 2,
                              strokeWidth: 1.0,
                              dottedLength: 10.0,
                              space: 2.0,
                              corner: FDottedLineCorner.all(16),
                              child: Container(
                                color: Color(0xfffff5f3),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10.0,
                                      right: 10,
                                      top: 30,
                                      bottom: 20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        "assets/images/add.svg",
                                        height: 24,
                                      ),
                                      SizedBox(
                                        height: 11,
                                      ),
                                      Text(
                                        "Add New",
                                        style: TextStyle(
                                            color: Colors.grey[600],
                                            fontWeight: FontWeight.w500,
                                            fontFamily: "FuturaMain"),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 110,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: products.length,
                                itemBuilder: (context, int i) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      width: 310,
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                          side: new BorderSide(
                                              color: Colors.grey[300],
                                              width: 0.5),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        elevation: 1,
                                        color: Colors.white,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: 80,
                                              decoration: BoxDecoration(),
                                              height: double.infinity,
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(12),
                                                  topLeft: Radius.circular(12),
                                                ),
                                                child: Image.asset(
                                                  "${products[i].imagePath}",
                                                  fit: BoxFit.fitHeight,
                                                  // scale: 24,
                                                ),
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  height: 18,
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 18.0,
                                                          right: 19),
                                                  child: Text(
                                                    products[i].avatarURL,
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontFamily:
                                                            "FuturaMain"),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 18.0,
                                                          right: 19),
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Average Price:",
                                                        style: TextStyle(
                                                            fontSize: 13,
                                                            fontFamily:
                                                                "FuturaMain",
                                                            color: Color(
                                                                0xffacacac)),
                                                      ),
                                                      SizedBox(
                                                        width: 35,
                                                      ),
                                                      Text(
                                                        "You saved",
                                                        style: TextStyle(
                                                            fontSize: 13,
                                                            fontFamily:
                                                                "FuturaMain",
                                                            color: Color(
                                                                0xffacacac)),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 18.0),
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          SvgPicture.asset(
                                                            "assets/images/naira.svg",
                                                            color: Color(
                                                                0xff330096),
                                                            height: 10,
                                                          ),
                                                          Text(
                                                            "${products[i].price}.00",
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    "FuturaBook",
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Color(
                                                                    0xff330096),
                                                                fontSize: 15),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        width: 40,
                                                      ),
                                                      Container(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 8,
                                                                vertical: 2),
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xff7edfb6),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(3),
                                                        ),
                                                        child: Text(
                                                          "\u20a6 ${products[i].saved}",
                                                          style: TextStyle(
                                                              // fontFamily:
                                                              //     "FuturaMain",
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 34.0,
                top: 20,
                right: 28,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SvgPicture.asset(
                    "assets/images/transfer_fill.svg",
                    color: Color(0xff7edfb6),
                    height: 18,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Recent transactions",
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: "FuturaBook",
                        letterSpacing: 0.9,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffb7b7b7)),
                  ),
                  Spacer(),
                  Text(
                    "View all",
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: "FuturaBook",
                        fontWeight: FontWeight.w600,
                        color: Color(0xff330065)),
                  ),
                  SvgPicture.asset(
                    "assets/images/forward.svg",
                    height: 18,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 30.0,
                right: 31,
              ),
              child: Column(
                children: [
                  _funded(),
                  _withdrawn(),
                  _funded(),
                  _funded(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _withdrawn() {
    return Row(
      children: [
        Container(
          height: 75,
          width: 45,
          child: CircleAvatar(
              backgroundColor: Color(0xfffbebe9),
              child: SvgPicture.asset(
                "assets/images/transact_g.svg",
                height: 16,
                color: Color(0xffda3624),
              )),
        ),
        SizedBox(
          width: 14,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Insurance Withdrawn",
              style: TextStyle(
                  fontFamily: "FuturaMain",
                  fontSize: McGyver.textSize(context, 2)),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              "MacBook Pro Laptop",
              style: TextStyle(
                  fontFamily: "FuturaMain",
                  color: Colors.grey[400],
                  fontSize: McGyver.textSize(context, 1.7)),
            ),
          ],
        ),
        Spacer(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "-\u20a6 2,000",
              style: TextStyle(
                color: Color(0xffda3624),
                fontSize: McGyver.textSize(context, 2),
                // fontFamily: "FuturaMain"
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              "12th Oct, 12:30pm",
              style: TextStyle(
                  fontFamily: "FuturaMain",
                  color: Colors.grey[400],
                  fontSize: McGyver.textSize(context, 1.6)),
            ),
          ],
        ),
      ],
    );
  }

  Widget _funded() {
    return Row(
      children: [
        Container(
          height: 75,
          width: 45,
          child: CircleAvatar(
              backgroundColor: Color(0xfff2fcf8),
              child: SvgPicture.asset(
                "assets/images/transact_g.svg",
                height: 16,
                color: Color(0xff7EDFB6),
              )),
        ),
        SizedBox(
          width: 14,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Insurance Funded",
              style: TextStyle(
                  fontFamily: "FuturaMain",
                  fontSize: McGyver.textSize(context, 2.2)),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              "MacBook Pro Laptop",
              style: TextStyle(
                  fontFamily: "FuturaMain",
                  color: Colors.grey[400],
                  fontSize: McGyver.textSize(context, 1.7)),
            ),
          ],
        ),
        Spacer(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "+\u20a6 2,000",
              style: TextStyle(
                  color: Color(0xff7EDFB6),
                  fontSize: McGyver.textSize(context, 2.2)
                  // fontFamily: "FuturaMain"
                  ),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              "12th Oct, 12:30pm",
              style: TextStyle(
                  fontFamily: "FuturaMain",
                  color: Colors.grey[400],
                  fontSize: McGyver.textSize(context, 1.7)),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildNotify() {
    return Row(
      children: [
        Stack(
          children: [
            SvgPicture.asset(
              "assets/images/notification.svg",
              height: 24,
              color: Color(0xffad99c1),
            ),
            Positioned(
              right: 0,
              top: 0,
              child: Container(
                height: 12,
                width: 12,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.white),
              ),
            ),
            Positioned(
              right: 1,
              top: 1,
              child: Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Color(0xffff978b)),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 15,
        )
      ],
    );
  }
}
