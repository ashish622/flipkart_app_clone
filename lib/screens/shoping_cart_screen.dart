import 'package:flipkart_home/main.dart';
import 'package:flutter/material.dart';

class ShoppingCartScreen extends StatelessWidget {
  const ShoppingCartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white24,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('My Cart',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 60,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      RichText(
                                        text: const TextSpan(
                                          text: 'Deliver to:  ',
                                          style: TextStyle(
                                            color: Colors.black
                                          ),
                                          children: [
                                            TextSpan(
                                              text: 'Ashish Singh',
                                              style:
                                                TextStyle(fontWeight: FontWeight.bold,color: Colors.black)
                                            )
                                          ]
                                        ),
                                      ),
                                      const Text('Add: A-74, Dayal Residency, Lucknow, 226028')
                                    ],
                                  ),
                                  Container(
                                    width: 80,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      border: Border.all(width: 0.8, color: Colors.black45),
                                      borderRadius: BorderRadius.circular(4)
                                    ),
                                    child: TextButton(
                                      onPressed: (){},
                                      child: Text('Change',style: TextStyle(color: Colors.blue.withBlue(2)),),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 800,
                        width: double.infinity,
                        // child: GridView.builder(
                        //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        //     crossAxisCount: 1,
                        //   ),
                        //   itemCount: 5,
                        //   itemBuilder: (BuildContext context, index){
                        //     return Padding(
                        //       padding: const EdgeInsets.all(18.0),
                        //       child: Card(
                        //         child: InkWell(
                        //           splashColor: Colors.blue.withAlpha(30),
                        //           onTap: () {
                        //             debugPrint('Card tapped.');
                        //           },
                        //           child: Container(
                        //             height: 20,
                        //             width: double.infinity,
                        //             padding: const EdgeInsets.all(15),
                        //             color: Colors.white,
                        //             child: const Row(
                        //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //               children: [
                        //                 Column(
                        //                   mainAxisAlignment: MainAxisAlignment.center,
                        //                   crossAxisAlignment: CrossAxisAlignment.center,
                        //                   children: [
                        //                     Image(image: AssetImage('assets/images/img_15.png'),
                        //                       width: 50,height: 50,
                        //                     ),
                        //                     Text('Count'),
                        //                   ],
                        //                 ),
                        //                 Column(
                        //                   mainAxisAlignment: MainAxisAlignment.center,
                        //                   children: [
                        //                     Text('Product Name'),
                        //                     Text('Product Details'),
                        //                     Text('Price'),
                        //                   ],
                        //                 )
                        //               ],
                        //             ),
                        //           )
                        //         ),
                        //       ),
                        //     );
                        //   },
                        // ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}