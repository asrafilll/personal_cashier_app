import 'package:flutter/material.dart';
import 'package:personal_cashier_app/presentation/admin/components/dashboard_summary.dart';

class AdminHomePage extends StatelessWidget {
  const AdminHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 32,
          vertical: 60,
        ),
        child: Column(
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
          ],
        ),
      ),
    );
  }
}
