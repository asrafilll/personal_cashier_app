import 'package:flutter/material.dart';
import 'package:personal_cashier_app/core/app_styles.dart';

class DashboardProductTile extends StatelessWidget {
  const DashboardProductTile({
    super.key,
    required this.myFruit,
  });

  final Map<String, dynamic> myFruit;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: 17,
        horizontal: 8,
      ),
      decoration: BoxDecoration(
        color: kLightGreyColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                myFruit['image'],
                width: 60,
              ),
              const SizedBox(width: 4),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    myFruit['name'],
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: kBlackColor,
                    ),
                  ),
                  const Text(
                    'Buah',
                    style: TextStyle(
                      color: kGreyColor,
                    ),
                  )
                ],
              ),
            ],
          ),
          Column(
            children: [
              const Text(
                '10 Kg',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 6),
              RichText(
                text: const TextSpan(
                  text: '\$',
                  style: TextStyle(color: kGreyColor),
                  children: <TextSpan>[
                    TextSpan(
                      text: '20',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: kBlackColor,
                      ),
                    ),
                    TextSpan(text: '/Kg'),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
