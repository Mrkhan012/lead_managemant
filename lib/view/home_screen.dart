import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          _buildNavigationBarItem(
            icon: AppImages.hp,
            label: 'Home',
            index: 0,
          ),
          _buildNavigationBarItem(
            icon: AppImages.clas,
            label: 'Class',
            index: 1,
          ),
          _buildNavigationBarItem(
            icon: AppImages.livee,
            label: 'Live',
            index: 2,
          ),
          _buildNavigationBarItem(
            icon: AppImages.leds,
            label: 'Leads',
            index: 3,
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
            activeIcon: Icon(Icons.account_circle, color: Color(0xFF7D23E0)),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFF7D23E0),
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        showUnselectedLabels: true,
      ),
    );
  }

  BottomNavigationBarItem _buildNavigationBarItem({
    required String icon,
    required String label,
    required int index,
  }) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        icon,
        height: 20.h,
        width: 20.w,
        color: _selectedIndex == index ? const Color(0xFF7D23E0) : Colors.grey,
      ),
      label: label,
    );
  }
}
