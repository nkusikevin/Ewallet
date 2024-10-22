import 'package:ewallet/components/notification_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
   Notifications({super.key});

  final List notifications = [
    {
      "title": "Cashback 50%",
      "time": "5:00 PM",
      "type": "promo",
      "stIcon": "BLCK10",
      "color": "105D38",
    },
    {
      "title": "Cashback 50%",
      "time": "5:00 PM",
      "type": "promo",
      "stIcon": "BLCK10",
      "icon": Icons.verified
    },
    {
      "title": "Daily Cashback",
      "time": "12:00 PM",
      "type": "promo",
      "color": "FFAE58",
      "icon": Icons.calendar_today,

    },
    {
      "title": "\$250 top up successful added",
      "time": "8:00 PM",
      "type": "system",
      "icon": Icons.credit_card,

    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notifications',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 14, 85, 19),
      ),
      body: Container(
        color: Colors.green[900],
        child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50)),
            ),
            child: Container(
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("TODAY",
                          style:
                              TextStyle(fontSize: 14, color: Colors.grey[800])),
                      Text("Mark as read",
                          style: TextStyle(fontSize: 14, color: Colors.green)),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 90,
                    margin: const EdgeInsets.only(top: 10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color(0xFFEDFAF2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: const Icon(CupertinoIcons.checkmark_seal,
                                    size: 30, color: Colors.white)),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Cashback 50%",
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                                Text("Get 50% cashback on your next top up",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.grey[800])),
                                Text("Top up now >",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green[800])),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text("YESTERDAY",
                      style: TextStyle(fontSize: 14, color: Colors.grey[800])),
                  const SizedBox(height: 20),
                  Expanded(
                    child: Container(
                      height: 200,
                      child: ListView.builder(
                          itemCount: notifications.length,
                          itemBuilder: (context, index) {
                            return  NotificationTile(
                              title: notifications[index]["title"],
                              time: notifications[index]["time"],
                              type: notifications[index]["type"],
                              stIcon: notifications![index]["stIcon"],
                              color: notifications[index]["color"],
                              icon: notifications[index]["icon"],
                            );
                          }),
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
