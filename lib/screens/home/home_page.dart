import 'package:ewallet/components/home_nav.dart';
import 'package:ewallet/components/payment_methods.dart';
import 'package:ewallet/components/promoD.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeNav(),
                const SizedBox(height: 20),
                _buildBalanceSection(),
                const SizedBox(height: 20),
                _buildQuickActionsSection(),
                const SizedBox(height: 20),
                _buildSectionTitle("Payment List"),
                const SizedBox(height: 10),
                const SizedBox(
                  height: 200,
                  child: PaymentList(),
                ),
                const SizedBox(height: 20),
                _buildSectionTitle("Promo & Discount"),
                SizedBox(
                  height: 200,
                  child: PromoAndDiscounts(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBalanceSection() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '👋Hello, Kevin',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              'Your available balance',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        Text(
          "\$15,900",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.end,
        ),
      ],
    );
  }

  Widget _buildQuickActionsSection() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(255, 0, 123, 255),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          _buildQuickActionItem(
            icon: CupertinoIcons.arrow_right_arrow_left,
            label: 'Transfer',
          ),
          _buildQuickActionItem(
            icon: CupertinoIcons.creditcard,
            label: 'Top Up',
            showBorder: true,
          ),
          _buildQuickActionItem(
            icon: CupertinoIcons.time,
            label: 'History',
          ),
        ],
      ),
    );
  }

  Widget _buildQuickActionItem({
    required IconData icon,
    required String label,
    bool showBorder = false,
  }) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: showBorder
            ? const Border.symmetric(
                vertical: BorderSide(
                  color: Color.fromARGB(255, 199, 199, 199),
                  width: 1,
                ),
              )
            : null,
      ),
      child: Column(
        children: [
          Icon(
            icon,
            size: 30,
            color: Colors.white,
          ),
          const SizedBox(height: 3),
          Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
