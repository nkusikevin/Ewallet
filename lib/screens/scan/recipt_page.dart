import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_widget/ticket_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_any_logo/flutter_logo.dart';
import 'package:dotted_line/dotted_line.dart';

class ReciptPage extends StatelessWidget {
  const ReciptPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: const Color.fromARGB(255, 14, 85, 19),
          child: const SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Payment Recipt',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w600)),
                  SizedBox(height: 20),
                  TicketWidget(
                    width: 350,
                    height: 600,
                    isCornerRounded: true,
                    padding: EdgeInsets.all(20),
                    child: TicketData(),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

class TicketData extends StatelessWidget {
  const TicketData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Success Icon
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            color: const Color(0xFFE8B87D),
            border: Border.all(
              color: const Color(0xFF0E5513),
              width: 3,
            ),
            shape: BoxShape.circle,
          ),
          child: const Icon(
            CupertinoIcons.check_mark,
            color: Colors.white,
            size: 60,
          ),
        ),
        const SizedBox(height: 20),

        // Payment Success Text
        const Text(
          'Payment Success',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),

        // Payment Description
        const Text(
          'Your payment for macDonalds has\nbeen successfully done',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 20),

        // Total Payment Text
        const Text(
          'Total Payment',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 5),

        // Amount
        const Text(
          '\$132.00',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),

        DottedLine(
          direction: Axis.horizontal,
          alignment: WrapAlignment.center,
          lineLength: double.infinity,
          lineThickness: 1.0,
          dashLength: 8,
          dashColor: Colors.black,
          dashGradient: [const Color.fromARGB(255, 119, 255, 0), const Color.fromARGB(255, 6, 100, 1)],
          dashRadius: 0.0,
          dashGapLength: 8,
          dashGapColor: Colors.transparent,
          dashGapGradient: const [
            Color.fromARGB(255, 119, 255, 0),
            Color.fromARGB(255, 6, 100, 1)
          ],
          dashGapRadius: 0.0,
        ),
        const SizedBox(height: 30),

        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Color.fromARGB(235, 255, 255, 255),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: AnyLogo.daily.mcDonals
                    .image(height: 70, fit: BoxFit.contain),
              ),
              const SizedBox(width: 15),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'MacDonalds',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Dec 2, 2020 • 3:02 PM',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 30),

        // Done Button
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green.shade500,
            minimumSize: const Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: const Text(
            'Done',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
        const SizedBox(height: 15),

        // Pay Again Text Button
        TextButton(
          onPressed: () {},
          child: const Text(
            'Pay again',
            style: TextStyle(
              color: Color(0xFF0E5513),
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
