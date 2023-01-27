import 'package:flutter/material.dart';
import 'package:personal_cashier_app/core/app_styles.dart';
import 'package:personal_cashier_app/presentation/admin/components/dashboard_product_tile.dart';
import 'package:personal_cashier_app/presentation/admin/components/dashboard_summary.dart';

class AdminHomePage extends StatelessWidget {
  AdminHomePage({super.key});

  final List<Map<String, dynamic>> myFruit = [
    {
      'image': 'assets/products/apple.png',
      'name': 'Apel',
      'totalSold': 30,
    },
    {
      'image': 'assets/products/banana.png',
      'name': 'Pisang',
      'totalSold': 10,
    },
    {
      'image': 'assets/products/orange.png',
      'name': 'Jeruk',
      'totalSold': 20,
    },
    {
      'image': 'assets/products/watermelon.png',
      'name': 'Semangka',
      'totalSold': 10,
    },
    {
      'image': 'assets/products/chilli.png',
      'name': 'Cabe Merah',
      'totalSold': 50,
    },
    {
      'image': 'assets/products/grape.png',
      'name': 'Anggur',
      'totalSold': 30,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 32,
            vertical: 60,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Dashboard',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Image.asset(
                    'assets/icon_dashboard.png',
                  )
                ],
              ),
              const SizedBox(height: 30),
              const DashboardSummaryComponent(),
              const SizedBox(height: 39),
              const Text(
                'Products List',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: kDarkGreyColor,
                ),
              ),
              const SizedBox(height: 18),
              ListView.separated(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => DashboardProductTile(
                  myFruit: myFruit[index],
                ),
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 20),
                itemCount: myFruit.length,
              )
            ],
          ),
        ),
      ),
    );
  }
}
