import 'package:flutter/material.dart';
import 'package:personal_cashier_app/core/app_styles.dart';
import 'package:personal_cashier_app/presentation/admin/add_product_page.dart';
import 'package:personal_cashier_app/presentation/admin/components/dashboard_product_tile.dart';

class AdminProductPage extends StatelessWidget {
  const AdminProductPage({super.key});

  static List<Map<String, dynamic>> myFruit = [
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 30,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(),
                  const Text(
                    'Stock Product',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (builder) => const AddProductPage(),
                        ),
                      );
                    },
                    child: const Icon(
                      Icons.add_box_outlined,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 30),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: BorderSide.none,
                  ),
                  fillColor: kLightGreyColor,
                  filled: true,
                  hintText: 'Find Product or code',
                  prefixIcon: const Icon(Icons.search),
                ),
              ),
              const SizedBox(height: 30),
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
