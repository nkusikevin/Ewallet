import 'package:ewallet/screens/home/home_view.dart';
import 'package:ewallet/screens/notifications/notifications.dart';
import 'package:ewallet/screens/profile/profile.dart';
import 'package:ewallet/screens/scan/scan.dart';
import 'package:ewallet/screens/stats/statistics.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomeView(),
    const StatisticsPage(),
    Notifications(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: _pages[_currentIndex],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow[800],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ScanPage()),
          );
        },
        child: const Icon(CupertinoIcons.qrcode_viewfinder,
            size: 38, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 255, 255, 255),
        shape: CircularNotchedRectangle(),
        notchMargin: 12,
        elevation: 20,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(CupertinoIcons.home,
                  color: _currentIndex == 0 ? Colors.green[900] : Colors.grey),
              onPressed: () => setState(() => _currentIndex = 0),
            ),
            IconButton(
              icon: Icon(CupertinoIcons.chart_bar,
                  color: _currentIndex == 1 ? Colors.green[900] : Colors.grey),
              onPressed: () => setState(() => _currentIndex = 1),
            ),
            const SizedBox.shrink(),
            IconButton(
              icon: Icon(CupertinoIcons.bell,
                  color: _currentIndex == 2 ? Colors.green[900] : Colors.grey),
              onPressed: () => setState(() => _currentIndex = 2),
            ),
            IconButton(
              icon: Icon(CupertinoIcons.person,
                  color: _currentIndex == 3 ? Colors.green[900] : Colors.grey),
              onPressed: () => setState(() => _currentIndex = 3),
            ),
          ],
        ),
      ),
    );
  }
}
