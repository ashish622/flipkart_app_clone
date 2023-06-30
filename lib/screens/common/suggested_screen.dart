import 'package:flutter/material.dart';

class SuggestedProducts extends StatelessWidget {
  final List<String> products;
  const SuggestedProducts({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int productLength = products.length;
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      addSemanticIndexes: true,
      itemCount: productLength,
      itemBuilder: (context, index){
        return Padding(
          padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
          child: InkWell(
            onTap: (){},
            child: Container(
              width: MediaQuery.of(context).size.width*0.30,
              height: 100,
              decoration: BoxDecoration(
                  border: Border.all(width: 1,color: Colors.black12)
              ),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 70,
                    child: Image(
                      image: AssetImage(products[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Text('Handpicked Deals',style: TextStyle(fontSize: 12,),),
                  const Text('Just For You',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
