import 'package:flipkart_home/models/product_model.dart';
import 'package:flutter/material.dart';

class DiscountProduct extends StatefulWidget {
  final List<ProductModel> product;
  const DiscountProduct({Key? key, required this.product}) : super(key: key);

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
                  child: Image(
                    image: AssetImage(widget.product[0].images),
                    fit: BoxFit.cover,),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(widget.product[0].name),
                    Text(widget.product[0].details,
                      style: const TextStyle(color: Colors.green),),
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
                  child: Image(image: AssetImage(widget.product[1].images),fit: BoxFit.cover,),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(widget.product[1].name),
                    Text(widget.product[1].details,
                      style: const TextStyle(color: Colors.green),),
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
                  child: Image(image: AssetImage(widget.product[1].images),fit: BoxFit.cover,),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(widget.product[1].name),
                    Text(widget.product[1].details,
                      style: const TextStyle(color: Colors.green),),
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
                  child: Image(image: AssetImage(widget.product[2].images),fit: BoxFit.cover,),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(widget.product[2].name),
                    Text(widget.product[2].details,
                      style: const TextStyle(color: Colors.green),),
                  ],
                )
              ],
            )
        ),
      ],
    );
  }
}
