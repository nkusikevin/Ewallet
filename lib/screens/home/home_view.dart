import 'package:ewallet/components/home_action_section.dart';
import 'package:ewallet/components/home_nav.dart';
import 'package:ewallet/components/payment_methods.dart';
import 'package:ewallet/components/promoD.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          SafeArea(
            bottom: false,
            child: Container(), // Establishes safe area boundaries
          ),
          CustomScrollView(
            slivers: [
              SliverSafeArea(
                bottom: false,
                sliver: SliverPadding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  sliver: SliverList(
                    delegate: SliverChildListDelegate([
                      const HomeNav(),
                      const SizedBox(height: 20),
                      
                      _buildBalanceSection(),
                      const SizedBox(height: 20),
                      HomeActionSection(),
                      const SizedBox(height: 20),
                      _buildSectionTitle("Payment List"),
                      const SizedBox(height: 10),
                      const SizedBox(
                        height: 250,
                        child: PaymentList(),
                      ),
                      const SizedBox(height: 20),
                      _buildSectionTitle("Promo & Discount"),
                      SizedBox(
                        height: 200,
                        child: PromoAndDiscounts(),
                      ),
                      
                      const SizedBox(height: 80),
                    ]),
                  ),
                ),
              ),
            ],
          ),
        ],
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









// ┌─────────────────┐
// │   Status Bar    │
// ├─────────────────┤
// │     SafeArea    │  <- Empty Container() establishes padding
// │   (invisible)   │
// │                 │
// ├─────────────────┤
// │ CustomScrollView│  <- Your actual scrolling content
// │     content     │
// │       ...       │
// └─────────────────┘