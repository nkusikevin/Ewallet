import 'package:flutter/material.dart';

class PromoAndDiscounts extends StatelessWidget {
   PromoAndDiscounts({Key? key}) : super(key: key);






final List<Map<String, dynamic>> discounts = [
{
  "title": '30% OFF',
  "subtitle": 'Black Friday Deal',
  "description": 'Get discount for every topup, transfer and payment',
  "background": const Color.fromARGB(255, 0, 55, 62),
},
{
  "title": '50% OFF',
  "subtitle": 'Cyber Monday Deal',
  "description": 'Special Offer for Today’s Top Up, Transfer and Payment',
  "background": const Color.fromARGB(255, 255, 211, 166),
},
{
  "title": '20% OFF',
  "subtitle": 'Christmas Deal',
  "description": 'Get discount for every topup, transfer and payment',
  "background": const Color.fromARGB(255, 0, 123, 255),
}
];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: discounts.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        final discount = discounts[index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 300,
            decoration: BoxDecoration(
              color: discount['background'],
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    discount['title'],
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    discount['subtitle'],
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    discount['description'],
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}  