import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationTile extends StatelessWidget {
  final String title;
  final String time;
  final String type;
  final IconData? icon;
  final String? stIcon;
  final String? color;

  const NotificationTile(
      {super.key,
      required this.title,
      required this.time,
      required this.type,
      this.icon,
      this.stIcon,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 4),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Color(color != null ? int.parse('0xFF$color') : 0xFF105D38),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          icon != null
                              ? Icon(
                                  IconData( icon!.codePoint,
                                      fontFamily: 'MaterialIcons'),
                                  color: Colors.white,
                                )
                              : stIcon != null
                                  ? Text(
                                      stIcon!,
                                      style: const TextStyle(
                                          fontSize: 10, color: Colors.white),
                                    )
                                  : const SizedBox.shrink(),
                        ],
                      )),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 200,
                        child: Text(title,
                        softWrap: true,
                            style: const TextStyle(
                              wordSpacing: 1.5,
                                fontSize: 16, fontWeight: FontWeight.w500)),
                      ),
                      const SizedBox(height: 5),
                      Text(time,
                          style:
                              TextStyle(fontSize: 14, color: Colors.grey[800])),
                    ],
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFEDFAF2),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 6,
                  vertical: 5,
                ),
                child: Text(type == 'system' ? 'Info' : 'Promo',
                    style: const TextStyle(fontSize: 14, color: Colors.green)),
              )
            ],
          ),
        ],
      ),
    );
  }
}
