import 'package:flutter/material.dart';

class DiscountProduct extends StatelessWidget {
  final List<String> discounted;
  const DiscountProduct({Key? key, required this.discounted}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
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
                Image(image: AssetImage(discounted[0])),
                const Text('Cereals'),
                const Text('Best Deals on cereals',
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
                Image(image: AssetImage(discounted[0])),
                const Text('Cereals'),
                const Text('Best Deals on cereals',
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
                Image(image: AssetImage(discounted[0])),
                const Text('Cereals'),
                const Text('Best Deals on cereals',
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
                Image(image: AssetImage(discounted[0])),
                const Text('Cereals'),
                const Text('Best Deals on cereals',
                  style: TextStyle(color: Colors.green),),
              ],
            )
        ),
      ],
    );
  }
}
