import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:ui/test_page/test_inner_page.dart';

class HomeTestpage extends StatefulWidget {
  const HomeTestpage({Key? key}) : super(key: key);

  @override
  State<HomeTestpage> createState() => _HomeTestpageState();
}

class _HomeTestpageState extends State<HomeTestpage> {
  int _selectedIndex=0;
  late final List<Widget> _page=<Widget>[
    TestInnerPage(),
    Container(),
    Container(child: Center(child: Text("hellow"),),),
    Container(),
    Container(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _page.elementAt(_selectedIndex),



      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(0.1)
            )
          ]

        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
            child: GNav(
              color: Colors.black,
              duration: Duration(milliseconds: 400),
              padding: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
              gap: 8,
        rippleColor: Colors.grey[300]!,
        hoverColor: Colors.grey[300]!,
              iconSize: 24,
              tabBackgroundColor: Colors.green,

              tabs: [
               GButton(icon: LineIcons.home,text: "Home",),
               GButton(icon: LineIcons.home,text: "Home",),
               GButton(icon: LineIcons.home,text: "Home",),
               GButton(icon: LineIcons.home,text: "Home",),
               GButton(icon: LineIcons.home,text: "Home",),
              ],

              selectedIndex: _selectedIndex,
              onTabChange: (index){
                setState(() {
                  _selectedIndex=index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
