import 'package:flutter/material.dart';

class PaymentList extends StatelessWidget {
  const PaymentList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> paymentMethods = [
      {
        'icon': Icons.bolt,
        'name': 'Electricity',
        'color': const Color.fromARGB(255, 204, 190, 1)
      },
      {
        'icon': Icons.wifi,
        'name': 'Internet',
        'color': Color.fromARGB(255, 255, 56, 56)
      },
      {
        'icon': Icons.payment,
        'name': 'Voucher',
        'color': const Color.fromARGB(255, 37, 211, 2)
      },
      {
        'icon': Icons.medical_information,
        'name': 'Assurance',
        'color': const Color.fromARGB(255, 255, 0, 0)
      },
      {
        'icon': Icons.mobile_friendly,
        'name': 'Mobile Credit',
        'color': const Color.fromARGB(255, 22, 96, 255)
      },
      {
        'icon': Icons.shopping_cart,
        'name': 'Merchant',
        'color': const Color.fromARGB(255, 37, 211, 2)
      },
      {
        'icon': Icons.receipt,
        'name': 'Bill',
        'color': const Color.fromARGB(255, 255, 193, 49)
      },
      {
        'icon': Icons.menu,
        'name': 'More',
        'color': const Color.fromARGB(255, 37, 211, 2)
      },
    ];
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        childAspectRatio: 0.8,
        crossAxisSpacing: 10,
        mainAxisSpacing: 15,
      ),
      itemCount: paymentMethods.length,
      itemBuilder: (context, index) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 246, 246, 246),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(
                paymentMethods[index]['icon'],
                size: 30,
                color: paymentMethods[index]['color'],
              ),
            ),
            const SizedBox(height: 5),
            Text(
              paymentMethods[index]['name'],
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        );
      },
    );
  }
}
