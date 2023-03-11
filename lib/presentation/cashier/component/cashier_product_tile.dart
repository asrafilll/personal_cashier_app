import 'package:flutter/material.dart';
import 'package:personal_cashier_app/core/app_styles.dart';

class CashierProductTile extends StatelessWidget {
  const CashierProductTile({
    super.key,
    required this.myProduct,
  });

  final Map<String, dynamic> myProduct;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: 17,
        horizontal: 12,
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
                myProduct['image'],
                width: 60,
              ),
              const SizedBox(width: 4),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    myProduct['name'],
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: kBlackColor,
                    ),
                  ),
                  Text(
                    'Harga : \$ ${myProduct['price']}/Kg',
                    style: const TextStyle(
                      color: kGreyColor,
                    ),
                  )
                ],
              ),
            ],
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: kGreenColor,
            ),
            onPressed: () {},
            child: Row(
              children: const [
                Text('Tambah'),
                Icon(Icons.add),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
