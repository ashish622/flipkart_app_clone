import 'package:flutter/material.dart';

class SponsoredProduct extends StatefulWidget {
  const SponsoredProduct({Key? key}) : super(key: key);

  @override
  State<SponsoredProduct> createState() => _SponsoredProductState();
}

class _SponsoredProductState extends State<SponsoredProduct> {
  final List<String> _products = [
    'assets/images/img_12.png',
    'assets/images/img_13.png',
    'assets/images/img_14.png'
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: GridView.count(
        crossAxisCount: 3,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 4, 4),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.black12)
              ),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 70,
                    padding: const EdgeInsets.fromLTRB(0, 2, 0, 0),
                    child: Image(
                      image: AssetImage(_products[0]),
                      fit: BoxFit.contain,),
                  ),
                  const Text('Tea and Beverages',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                  const Text('min 50% off',style: TextStyle(fontSize: 12,color: Colors.green,fontWeight: FontWeight.bold),),
                  const Text('Best deals',style: TextStyle(fontSize: 12,color: Colors.black26),),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(4, 0, 4, 4),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.black12)
              ),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 70,
                    padding: const EdgeInsets.fromLTRB(0, 2, 0, 0),
                    child: Image(
                      image: AssetImage(_products[1]),
                      fit: BoxFit.contain,
                    ),
                  ),
                  const Text('Oral Care',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                  const Text('Up to 80% off',style: TextStyle(fontSize: 12,color: Colors.green,fontWeight: FontWeight.bold),),
                  const Text('Big discounts',style: TextStyle(fontSize: 12,color: Colors.black26),),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(4, 0, 8, 4),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black12)
              ),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 70,
                    padding: const EdgeInsets.fromLTRB(0, 2, 0, 0),
                    child: Image(image: AssetImage(_products[2]),fit: BoxFit.contain,),
                  ),
                  const Text('Snacks & Biscuit',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                  const Text('Up to 60% off',style: TextStyle(fontSize: 12,color: Colors.green,fontWeight: FontWeight.bold),),
                  const Text('Limited time Offer',style: TextStyle(fontSize: 12,color: Colors.black26),),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 4, 4, 4),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black12)
              ),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 70,
                    padding: const EdgeInsets.fromLTRB(0, 2, 0, 0),
                    child: Image(
                      image: AssetImage(_products[0]),
                      fit: BoxFit.contain,),
                  ),
                  const Text('Tea and Beverages',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                  const Text('min 50% off',style: TextStyle(fontSize: 12,color: Colors.green,fontWeight: FontWeight.bold),),
                  const Text('Best deals',style: TextStyle(fontSize: 12,color: Colors.black26),),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black12)
              ),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 70,
                    padding: const EdgeInsets.fromLTRB(0, 2, 0, 0),
                    child: Image(
                      image: AssetImage(_products[1]),
                      fit: BoxFit.contain,
                    ),
                  ),
                  const Text('Oral Care',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                  const Text('Up to 80% off',style: TextStyle(fontSize: 12,color: Colors.green,fontWeight: FontWeight.bold),),
                  const Text('Big discounts',style: TextStyle(fontSize: 12,color: Colors.black26),),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(4, 4, 8, 4),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black12)
              ),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 70,
                    padding: const EdgeInsets.fromLTRB(0, 2, 0, 0),
                    child: Image(image: AssetImage(_products[2]),fit: BoxFit.contain,),
                  ),
                  const Text('Snacks & Biscuit',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                  const Text('Up to 60% off',style: TextStyle(fontSize: 12,color: Colors.green,fontWeight: FontWeight.bold),),
                  const Text('Limited time Offer',style: TextStyle(fontSize: 12,color: Colors.black26),),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
