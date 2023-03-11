import 'package:flutter/material.dart';
import 'package:personal_cashier_app/core/app_styles.dart';
import 'package:personal_cashier_app/presentation/cashier/component/cashier_product_tile.dart';

class CashierHomePage extends StatelessWidget {
  const CashierHomePage({super.key});

  static List<Map<String, dynamic>> myProduct = [
    {
      'image': 'assets/products/apple.png',
      'name': 'Apel',
      'price': 30,
    },
    {
      'image': 'assets/products/banana.png',
      'name': 'Pisang',
      'price': 10,
    },
    {
      'image': 'assets/products/orange.png',
      'name': 'Jeruk',
      'price': 20,
    },
    {
      'image': 'assets/products/watermelon.png',
      'name': 'Semangka',
      'price': 10,
    },
    {
      'image': 'assets/products/chilli.png',
      'name': 'Cabe Merah',
      'price': 50,
    },
    {
      'image': 'assets/products/grape.png',
      'name': 'Anggur',
      'price': 30,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 22,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Selamat Datang',
                style: TextStyle(
                  fontSize: 12,
                  color: kGreyColor,
                ),
              ),
              const Text(
                'Warung SerbaTop',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: kBlackColor,
                ),
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
                  hintText: 'Find Product',
                  prefixIcon: const Icon(Icons.search),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    'Product',
                    style: TextStyle(
                      fontSize: 16,
                      color: kTextColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                      fontSize: 12,
                      color: kGreyColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              ListView.separated(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => CashierProductTile(
                  myProduct: myProduct[index],
                ),
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 20),
                itemCount: myProduct.length,
              )
            ],
          ),
        ),
      ),
    );
  }
}
