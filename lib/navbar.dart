import 'package:flutter/material.dart';
import 'package:flutter_api/Home.dart';
import 'package:flutter_api/shared/constant.dart';

class Navbar extends StatefulWidget {
  int currentIndex = 0;
  Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  final List<Widget> _children = [
    Home(),

    // const OrderScreen(),
  ];

  void onTapTapped(int index) {
    setState(() {
      widget.currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[widget.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTapTapped,
        currentIndex: widget.currentIndex,
        elevation: kLess,
        selectedItemColor: linear,
        unselectedItemColor: kLightColor,
        backgroundColor: Colors.white,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
