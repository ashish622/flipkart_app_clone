import 'package:flutter/material.dart';

class SponsoredProduct extends StatefulWidget {
  final List<String> productImage;
  const SponsoredProduct({Key? key, required this.productImage}) : super(key: key);

  @override
  State<SponsoredProduct> createState() => _SponsoredProductState();
}

class _SponsoredProductState extends State<SponsoredProduct> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1.0,
            color: Colors.black
          )
        )
      ),
      child: ListView.separated(
        itemBuilder: (BuildContext context, int index){
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(4, 0, 4, 4),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black12)
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 98,
                        height: 70,
                        padding: const EdgeInsets.fromLTRB(0, 2, 0, 0),
                        child: Image(
                          image: AssetImage(widget.productImage[0]),
                          fit: BoxFit.fitWidth,),
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
                        width: 98,
                        height: 70,
                        padding: const EdgeInsets.fromLTRB(0, 2, 0, 0),
                        child: Image(
                          image: AssetImage(widget.productImage[0]),
                          fit: BoxFit.fitWidth,),
                      ),
                      const Text('Tea and Beverages',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                      const Text('min 50% off',style: TextStyle(fontSize: 12,color: Colors.green,fontWeight: FontWeight.bold),),
                      const Text('Best deals',style: TextStyle(fontSize: 12,color: Colors.black26),),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(4, 0, 2, 2),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black12)
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 98,
                        height: 70,
                        padding: const EdgeInsets.fromLTRB(0, 2, 0, 0),
                        child: Image(
                          image: AssetImage(widget.productImage[0]),
                          fit: BoxFit.fitWidth,),
                      ),
                      const Text('Tea and Beverages',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                      const Text('min 50% off',style: TextStyle(fontSize: 12,color: Colors.green,fontWeight: FontWeight.bold),),
                      const Text('Best deals',style: TextStyle(fontSize: 12,color: Colors.black26),),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
        separatorBuilder: (BuildContext context, int index){
          return const Divider(
            thickness: 1.0,
            color: Colors.black,
          );
        },
        itemCount: 2,
      ),
    );
  }
}
