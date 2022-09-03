import 'package:app/provider/bottom_navigation.dart';
import 'package:app/views/bottom_navigation/calendar.dart';
import 'package:app/views/bottom_navigation/menu.dart';
import 'package:app/views/bottom_navigation/search.dart';
import 'package:app/views/bottom_navigation/settings.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  final items = const [
    Menu(),
    Calendar(),
    Search(),
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 4'),
      ),
      body: items[context.watch<BottomNavigationState>().currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: context.watch<BottomNavigationState>().currentIndex,
        items: [
          _buildBottomNavItem(Icons.menu, "Menu"),
          _buildBottomNavItem(Icons.calendar_month, "Calendar"),
          _buildBottomNavItem(Icons.search, "Search"),
          _buildBottomNavItem(Icons.settings, "Settings")
        ],
        onTap: (index) => context.read<BottomNavigationState>().setCurrentIndex(index),
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavItem(IconData icon, String label) {
    return BottomNavigationBarItem(
        tooltip: label, backgroundColor: Colors.green, icon: Icon(icon), label: 'Menu');
  }
}
