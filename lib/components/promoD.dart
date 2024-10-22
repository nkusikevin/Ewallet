import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PromoAndDiscounts extends StatelessWidget {
  PromoAndDiscounts({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> discounts = [
    {
      "title": '30% OFF',
      "subtitle": 'Black Friday Deal',
      "description": 'Get discount for every topup, transfer and payment',
      "background": const Color.fromARGB(255, 0, 55, 62),
      "decorationType": "circles",
    },
    {
      "title": '50% OFF',
      "subtitle": 'Cyber Monday Deal',
      "description": 'Special Offer for Today\'s Top Up, Transfer and Payment',
      "background": const Color.fromARGB(255, 244, 151, 59),
      "decorationType": "waves",
    },
    {
      "title": '20% OFF',
      "subtitle": 'Christmas Deal',
      "description": 'Get discount for every topup, transfer and payment',
      "background": const Color.fromARGB(255, 0, 123, 255),
      "decorationType": "dots",
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
          child: Stack(
            children: [
              Container(
                width: 300,
                decoration: BoxDecoration(
                  color: discount['background'],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: CustomPaint(
                  painter: _DecorationPainter(
                    decorationType: discount['decorationType'],
                    color: Colors.white.withOpacity(0.1),
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
              ),
              if (discount['decorationType'] == "circles")
                Positioned(
                  right: -20,
                  top: -20,
                  child: _buildCircleDecoration(),
                ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildCircleDecoration() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white.withOpacity(0.1),
      ),
    );
  }
}

class _DecorationPainter extends CustomPainter {
  final String decorationType;
  final Color color;

  _DecorationPainter({required this.decorationType, required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    switch (decorationType) {
      case "waves":
        _drawWaves(canvas, size, paint);
        break;
      case "dots":
        _drawDots(canvas, size, paint);
        break;
      case "circles":
        _drawCircles(canvas, size, paint);
        break;
    }
  }

  void _drawWaves(Canvas canvas, Size size, Paint paint) {
    Path path = Path();
    path.moveTo(0, size.height * 0.8);
    
    path.quadraticBezierTo(
      size.width * 0.25,
      size.height * 0.7,
      size.width * 0.5,
      size.height * 0.8,
    );
    
    path.quadraticBezierTo(
      size.width * 0.75,
      size.height * 0.9,
      size.width,
      size.height * 0.8,
    );
    
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  void _drawDots(Canvas canvas, Size size, Paint paint) {
    double spacing = 30;
    double radius = 3;
    
    for (double x = 0; x < size.width; x += spacing) {
      for (double y = 0; y < size.height; y += spacing) {
        canvas.drawCircle(Offset(x, y), radius, paint);
      }
    }
  }

  void _drawCircles(Canvas canvas, Size size, Paint paint) {
    canvas.drawCircle(
      Offset(size.width * 0.8, size.height * 0.2),
      40,
      paint,
    );
    canvas.drawCircle(
      Offset(size.width * 0.9, size.height * 0.3),
      20,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}