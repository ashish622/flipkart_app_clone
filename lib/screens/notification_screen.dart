import 'package:flipkart_home/screens/home_screen.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
      Colors.white,
      appBar: AppBar(
        backgroundColor:
        Colors.white,
        title: const Text('Notifications', style: TextStyle(
          color: Colors.black
        ),),
        bottomOpacity: 0,
        shadowColor: Colors.transparent,
      ),
      body: Center(
        child: Container(
          width: 160,
          height: 300,
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Image(image: AssetImage('assets/images/img_18.png')),
              const Text('No notification yet',
                style:
                TextStyle(fontSize: 15,color: Colors.black),
              ),
              const Text('Simply browse,create a wishlist or make a purchase',
                textAlign: TextAlign.center,
                style:
                TextStyle(fontSize: 12,color: Colors.black54),
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context)=> MyApp()),
                  );
                },
                child: const Text('continue shopping'),)
            ],
          )
        ),
      ),
    );
  }
}