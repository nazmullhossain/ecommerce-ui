import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

import 'cart_page.dart';
import 'innner_home_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    InnerHomePage(),
    CartPage(),
    Container(),
    Container(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _widgetOptions.elementAt(_selectIndex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: Colors.white,
            boxShadow: [
          BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(0.1))
        ]),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[300]!,
              gap: 8,
              activeColor: Colors.white,
              iconSize: 24,
              color: Colors.black,
              tabBackgroundColor: Colors.redAccent,
              duration: Duration(milliseconds: 400),
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              tabs: [
                GButton(
                  icon: LineIcons.home,
                  text: "Home",
                ),
                GButton(
                  icon: LineIcons.shoppingBag,
                  text: "Cart",
                ),
                GButton(
                  icon: LineIcons.heart,
                  text: "Wishlist",
                ),
                GButton(
                  icon: LineIcons.user,
                  text: "Account",
                ),
              ],
              selectedIndex: _selectIndex,
              onTabChange: (index) {
                setState(() {
                  _selectIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
