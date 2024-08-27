import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lead_management/utils/assets.dart';
import 'package:lead_management/view/Account/account_screen.dart';
import 'package:lead_management/view/class/class_page.dart';
import 'package:lead_management/view/home/home_page.dart';
import 'package:lead_management/view/leads/lead_screnn.dart';
import 'package:lead_management/view/live/live_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State {
  int _selectedIndex = 0;
  static const List _screens = [
    HomePage(),
    ClassScreen(),
    LiveScreen(),
    LeadsScreen(),
    AccountScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppImages.hp,
              height: 20,
              width: 20,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppImages.clas,
              height: 20,
              width: 20,
            ),
            label: 'Class',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppImages.livee,
              height: 20,
              width: 20,
            ),
            label: 'Live',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppImages.leds,
              height: 20,
              width: 20,
            ),
            label: 'Leads',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(
          0xFF7D23E0,
        ),
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        showUnselectedLabels: true,
      ),
    );
  }
}
