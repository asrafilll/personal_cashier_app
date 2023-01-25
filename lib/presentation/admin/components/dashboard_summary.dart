import 'package:flutter/material.dart';
import 'package:personal_cashier_app/core/app_styles.dart';

class DashboardSummaryComponent extends StatelessWidget {
  const DashboardSummaryComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Total Products',
              style: TextStyle(
                color: kDarkGreyColor,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              '128',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 32,
                color: kBlackColor,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.only(
                top: 4,
                bottom: 4,
                left: 4,
                right: 10,
              ),
              decoration: BoxDecoration(
                  color: const Color(0XFFECF5EE),
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                children: [
                  Image.asset('assets/icon_scan_green.png'),
                  const SizedBox(width: 8),
                  const Text(
                    '+8.00%',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color(0XFF458F5A),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Stock in Hand',
              style: TextStyle(
                color: kDarkGreyColor,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              '2,350',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 32,
                color: kBlackColor,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.only(
                top: 4,
                bottom: 4,
                left: 4,
                right: 10,
              ),
              decoration: BoxDecoration(
                  color: const Color(0XFFD0F3FE),
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                children: [
                  Image.asset('assets/icon_scan_blue.png'),
                  const SizedBox(width: 8),
                  const Text(
                    '+8.00%',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color(0XFF00B2EB),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
