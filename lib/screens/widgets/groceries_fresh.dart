import 'package:flutter/material.dart';

Widget FreshGroceries(BuildContext context) => Container(
    height: 420,
    width: double.infinity,
    padding: const EdgeInsets.all(10.0),
    child: SizedBox(
      height: 400,
      width: double.infinity,
      child: GridView.count(
        primary: false,
        padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
              height: 40,
              width: 50,
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                  color: Colors.white
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(image: AssetImage('assets/images/product/img_17.png')),
                  Text('Tomatoes'),
                  Text('Best Deals on vegetables',
                    style: TextStyle(color: Colors.green),),
                ],
              )
          ),
          Container(
              height: 40,
              width: 50,
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                  color: Colors.white
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(image: AssetImage('assets/images/product/img_19.png')),
                  Text('Fresh Broccoli'),
                  Text('100% fresh to home',
                    style: TextStyle(color: Colors.green),),
                ],
              )
          ),
          Container(
              height: 40,
              width: 50,
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                  color: Colors.white
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(image: AssetImage('assets/images/product/img_19.png')),
                  Text('Fresh Broccoli'),
                  Text('100% fresh to home',
                    style: TextStyle(color: Colors.green),),
                ],
              )
          ),
          Container(
              height: 40,
              width: 50,
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                  color: Colors.white
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(image: AssetImage('assets/images/product/img_17.png')),
                  Text('Tomatoes'),
                  Text('Best Deals on vegetables',
                    style: TextStyle(color: Colors.green),),
                ],
              )
          ),
        ],
      ),
    )
);