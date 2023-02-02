import 'package:flutter/material.dart';
import 'package:personal_cashier_app/core/app_styles.dart';

class SettingsTile extends StatelessWidget {
  const SettingsTile({
    super.key,
    required this.img,
    required this.title,
  });

  final String img;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(img),
            const SizedBox(width: 14),
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                color: kBlackColor,
              ),
            )
          ],
        ),
        const Icon(
          Icons.chevron_right_rounded,
          color: kIconColor,
        )
      ],
    );
  }
}
