import 'package:flutter/material.dart';
import 'package:personal_cashier_app/core/app_styles.dart';
import 'package:personal_cashier_app/core/component/custom_button.dart';
import 'package:personal_cashier_app/core/component/settings_tile.dart';
import 'package:personal_cashier_app/login_screen.dart';

class AdminSettingPage extends StatelessWidget {
  const AdminSettingPage({super.key});

  static List<Map<String, dynamic>> settingData = [
    {
      'img': 'assets/icons/icon_account.png',
      'title': 'Edit Account Info',
    },
    {
      'img': 'assets/icons/icon_address.png',
      'title': 'Address Info',
    },
    {
      'img': 'assets/icons/icon_payment.png',
      'title': 'Payment Method',
    },
    {
      'img': 'assets/icons/icon_rewards.png',
      'title': 'Rewards or Coupon',
    },
    {
      'img': 'assets/icons/icon_settings.png',
      'title': 'Settings',
    },
    {
      'img': 'assets/icons/icon_policy.png',
      'title': 'Privacy Policy',
    },
    {
      'img': 'assets/icons/icon_about.png',
      'title': 'About PersonalCashier Apps',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/profile.png',
                width: 73,
              ),
              const SizedBox(height: 8),
              const Text(
                'Admin John',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: kBlackColor,
                ),
              ),
              const SizedBox(height: 32),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => SettingsTile(
                  img: settingData[index]['img'],
                  title: settingData[index]['title'],
                ),
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 24),
                itemCount: settingData.length,
              ),
              const SizedBox(height: 28),
              CustomButton(
                width: double.infinity,
                borderColor: kRedColor,
                bgColor: Colors.white,
                fgColor: kRedColor,
                title: 'Log Out',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (builder) => const LoginScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
