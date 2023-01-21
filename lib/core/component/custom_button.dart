import 'package:flutter/material.dart';
import 'package:personal_cashier_app/core/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    this.bgColor = kPrimaryColor,
    this.borderColor,
    this.fgColor = Colors.white,
  });

  final String title;
  final Color bgColor;
  final Color? borderColor;
  final Color fgColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 240,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          foregroundColor: fgColor,
          elevation: 0,
          side: BorderSide(
            color: borderColor ?? bgColor,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: () {},
        child: Text(
          title,
        ),
      ),
    );
  }
}