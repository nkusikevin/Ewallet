import 'package:ewallet/screens/scan/recipt_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConfirmPay extends StatelessWidget {
  const ConfirmPay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Confirm Password',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          leading: Container(
            height: 20,
            // width: 30,
            margin: const EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              border: Border.all( color:Colors.grey, width: 1),
            ),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(CupertinoIcons.back, color: Colors.black)),
          ),
        ),
        body:  Padding(
          padding: EdgeInsets.all(8.0),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              Text(
                'Please input your password before continuing payment',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 20),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    
                  ),
                  labelText: 'Password',
                  

                ),

              ),
              SizedBox(height: 20),
              
             Positioned(
                 bottom: 0,
                left: 0,
                right: 0,
              child:  SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green[400],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ReciptPage()),
                        );
                      },
                      child: Text("Confirm Payment",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all(Colors.green[400]),
                      ),
                    ),
                  ),
                ),
             )
            ],
          ),
        ));
  }
}
