import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import '../testscreen.dart';

class BottomNavScreen extends StatefulWidget {
  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  List<Widget> _homeItems = <Widget>[
    Scaffold(
      body: Center(
        child: Text("Home [Go to next nav item]"),
      ),
    ),
    TestScreen(),
    Scaffold(
      body: Center(
        child: Text("Loan"),
      ),
    ),
    Scaffold(
      body: Center(
        child: Text("Premium"),
      ),
    ),
    Scaffold(
      body: Center(
        child: Text("Profile"),
      ),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // final List _screens = [
  //   Scaffold(
  //     body: Center(
  //       child: Text("Home"),
  //     ),
  //   ),
  //   TestScreen(),
  //   Scaffold( body: Center(
  //       child: Text("Loan"),
  //     ),),
  //   Scaffold( body: Center(
  //       child: Text("Premium"),
  //     ),),
  //   Scaffold( body: Center(
  //       child: Text("Profile"),
  //     ),),
  // ];
  int _currentIndex = 0;
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _homeItems.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xfffbfafc),
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Column(
              children: [
                Container(
                    padding: const EdgeInsets.only(
                        bottom: 14.0, top: 4, left: 6.0, right: 6),
                    decoration: BoxDecoration(),
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          "assets/images/home.svg",
                          height: 20,
                          color: Color(0xffbfafcf),
                        ),
                      ],
                    )),
              ],
            ),
            activeIcon: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                SvgPicture.asset(
                  "assets/images/home.svg",
                  height: 20,
                  color: Color(0xff330096),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "Home",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.4,
                      fontSize: 12,
                      fontFamily: "FuturaBook",
                      color: Color(0xff330096)),
                ),
                SizedBox(
                  height: 15,
                ),
                SvgPicture.asset("assets/images/line.svg"),
              ],
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                Container(
                    padding: const EdgeInsets.only(
                        bottom: 14.0, top: 4, left: 6.0, right: 6),
                    decoration: BoxDecoration(),
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          "assets/images/insurance.svg",
                          height: 20,
                          color: Color(0xffbfafcf),
                        ),
                      ],
                    )),
              ],
            ),
            activeIcon: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                SvgPicture.asset(
                  "assets/images/insurance.svg",
                  height: 20,
                  color: Color(0xff330096),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "insurance",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.4,
                      fontSize: 12,
                      fontFamily: "FuturaBook",
                      color: Color(0xff330096)),
                ),
                SizedBox(
                  height: 15,
                ),
                SvgPicture.asset("assets/images/line.svg"),
              ],
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                Container(
                    padding: const EdgeInsets.only(
                        bottom: 14.0, top: 4, left: 6.0, right: 6),
                    decoration: BoxDecoration(),
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          "assets/images/loan.svg",
                          height: 20,
                          color: Color(0xffbfafcf),
                        ),
                      ],
                    )),
              ],
            ),
            activeIcon: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                SvgPicture.asset(
                  "assets/images/loan.svg",
                  height: 20,
                  color: Color(0xff330096),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "loan",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.4,
                      fontSize: 12,
                      fontFamily: "FuturaBook",
                      color: Color(0xff330096)),
                ),
                SizedBox(
                  height: 15,
                ),
                SvgPicture.asset("assets/images/line.svg"),
              ],
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                Container(
                    padding: const EdgeInsets.only(
                        bottom: 14.0, top: 4, left: 6.0, right: 6),
                    decoration: BoxDecoration(),
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          "assets/images/diamond.svg",
                          height: 20,
                          color: Color(0xffbfafcf),
                        ),
                      ],
                    )),
              ],
            ),
            activeIcon: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                SvgPicture.asset(
                  "assets/images/diamond.svg",
                  height: 20,
                  color: Color(0xff330096),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "Premium",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.4,
                      fontSize: 12,
                      fontFamily: "FuturaBook",
                      color: Color(0xff330096)),
                ),
                SizedBox(
                  height: 15,
                ),
                SvgPicture.asset("assets/images/line.svg"),
              ],
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                Container(
                    padding: const EdgeInsets.only(
                        bottom: 14.0, top: 4, left: 6.0, right: 6),
                    decoration: BoxDecoration(),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/user.png",
                          height: 25,
                        ),
                      ],
                    )),
              ],
            ),
            activeIcon: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Image.asset(
                  "assets/images/user.png",
                  height: 30,
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "Profile",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.4,
                      fontSize: 12,
                      fontFamily: "FuturaBook",
                      color: Color(0xff330096)),
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
            title: Text(''),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _onItemTapped(index)),
      ),
    );
  }
}
