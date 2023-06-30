import 'package:flutter/material.dart';

class DiscountProduct extends StatefulWidget {
  final List<String> discounted;
  const DiscountProduct({Key? key, required this.discounted}) : super(key: key);

  @override
  State<DiscountProduct> createState() => _DiscountProductState();
}

class _DiscountProductState extends State<DiscountProduct> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
      crossAxisSpacing: 5,
      mainAxisSpacing: 5,
      crossAxisCount: 2,
      children: <Widget>[
        Container(
            height: double.infinity,
            width: MediaQuery.of(context).size.width*0.25,
            padding: const EdgeInsets.all(1),
            decoration: const BoxDecoration(
                color: Colors.white
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 130,
                  child: Image(image: AssetImage(widget.discounted[0]),fit: BoxFit.cover,),
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Cereals'),
                    Text('Best Deals on cereals',
                      style: TextStyle(color: Colors.green),),
                  ],
                )
              ],
            )
        ),
        Container(
            height: double.infinity,
            width: MediaQuery.of(context).size.width*0.25,
            padding: const EdgeInsets.all(1),
            decoration: const BoxDecoration(
                color: Colors.white
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 130,
                  child: Image(image: AssetImage(widget.discounted[0]),fit: BoxFit.cover,),
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Cereals'),
                    Text('Best Deals on cereals',
                      style: TextStyle(color: Colors.green),),
                  ],
                )
              ],
            )
        ),
        Container(
            height: double.infinity,
            width: MediaQuery.of(context).size.width*0.25,
            padding: const EdgeInsets.all(1),
            decoration: const BoxDecoration(
                color: Colors.white
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 130,
                  child: Image(image: AssetImage(widget.discounted[0]),fit: BoxFit.cover,),
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Cereals'),
                    Text('Best Deals on cereals',
                      style: TextStyle(color: Colors.green),),
                  ],
                )
              ],
            )
        ),
        Container(
            height: double.infinity,
            width: MediaQuery.of(context).size.width*0.25,
            padding: const EdgeInsets.all(1),
            decoration: const BoxDecoration(
                color: Colors.white
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 130,
                  child: Image(image: AssetImage(widget.discounted[0]),fit: BoxFit.cover,),
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Cereals'),
                    Text('Best Deals on cereals',
                      style: TextStyle(color: Colors.green),),
                  ],
                )
              ],
            )
        ),
      ],
    );
  }
}
