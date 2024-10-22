import 'package:ewallet/components/home_action_section.dart';
import 'package:ewallet/components/home_nav.dart';
import 'package:ewallet/components/payment_methods.dart';
import 'package:ewallet/components/promoD.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;
    return Scaffold(
      extendBody: true,
      body: Stack(
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
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow[800],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        onPressed: () {
          print('Scan button pressed');
        },
        child: const Icon(CupertinoIcons.qrcode_viewfinder,
            size: 38, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const BottomAppBar(
        color: Color.fromARGB(255, 255, 255, 255),
        shape: CircularNotchedRectangle(),
        notchMargin: 12,
        elevation: 20,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(CupertinoIcons.home),
              onPressed: null,
            ),
            IconButton(
              icon: Icon(CupertinoIcons.chart_bar),
              onPressed: null,
            ),
            SizedBox.shrink(),
            IconButton(
              icon: Icon(CupertinoIcons.bell),
              onPressed: null,
            ),
            IconButton(
              icon: Icon(CupertinoIcons.person),
              onPressed: null,
            ),
          ],
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