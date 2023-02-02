import 'package:flutter/material.dart';
import 'package:personal_cashier_app/core/app_styles.dart';
import 'package:personal_cashier_app/presentation/admin/home_page.dart';
import 'package:personal_cashier_app/presentation/admin/report_page.dart';
import 'package:personal_cashier_app/presentation/admin/setting_page.dart';
import 'package:personal_cashier_app/presentation/admin/product_page.dart';

class AdminMainPage extends StatefulWidget {
  const AdminMainPage({super.key});

  @override
  State<AdminMainPage> createState() => _AdminMainPageState();
}

class _AdminMainPageState extends State<AdminMainPage> {
  int _selectedindex = 0;

  void _onTap(index) {
    setState(() {
      _selectedindex = index;
    });
  }

  final List<Widget> _adminPage = [
    const AdminHomePage(),
    const AdminProductPage(),
    const AdminReportPage(),
    const AdminSettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _adminPage[_selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: _onTap,
        currentIndex: _selectedindex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: kGreyColor,
        selectedItemColor: kPrimaryColor,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.topic),
            label: 'Product',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assessment),
            label: 'Report',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
