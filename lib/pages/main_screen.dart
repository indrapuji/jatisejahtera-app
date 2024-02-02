import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jatisejahtera/config/colors.dart';
import 'package:jatisejahtera/pages/home_screen.dart';
import 'package:jatisejahtera/pages/record_screen.dart';
import 'package:jatisejahtera/pages/user_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int myCurrentIndex = 0;
  List pages = [const HomeScreen(), const RecordScreen(), const UserScreen()];

  void _onItemTap(int index) {
    setState(() {
      myCurrentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: myCurrentIndex,
        items: const [
          BottomNavigationBarItem(
              // ignore: deprecated_member_use
              icon: FaIcon(FontAwesomeIcons.home, size: 20),
              label: 'HOME'),
          BottomNavigationBarItem(
              icon: Icon(Icons.history_outlined), label: 'RECORD'),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'USER',
          ),
        ],
        selectedItemColor: primaryColor,
        selectedFontSize: 12,
        onTap: _onItemTap,
      ),
      body: pages[myCurrentIndex],
    );
  }
}
