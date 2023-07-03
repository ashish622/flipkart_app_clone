import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class SuggestedProducts extends StatelessWidget {
  final CollectionReference _products =
  FirebaseFirestore.instance.collection('products');
  SuggestedProducts({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: _products.snapshots(),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (snapshot.hasData){
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            addSemanticIndexes: true,
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (context, index){
              final DocumentSnapshot documentSnapshot =
                  snapshot.data!.docs[index];
              return Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: InkWell(
                  onTap: (){},
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.27,
                    height: 110,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1,color: Colors.black12)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: double.infinity,
                              height: 75,
                              child: Image.network(
                                documentSnapshot['image'],
                                fit: BoxFit.cover,
                              )
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 35,
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(documentSnapshot['name'],style: const TextStyle(fontSize: 12,),),
                              Text(documentSnapshot['price'].toString(),
                                style: const TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        }
        return const Center(
          child: CircularProgressIndicator(color: Colors.grey,),
        );
      },
    );
  }
}
