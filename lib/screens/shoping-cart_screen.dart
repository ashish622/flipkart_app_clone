import 'package:flipkart_home/main.dart';
import 'package:flutter/material.dart';

class ShoppingCartScreen extends StatelessWidget {
  const ShoppingCartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Text('My Cart',style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                        height: 30,
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
                Container(
                  width: double.infinity,
                  height: 400,
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Ohh! you got Nothing in here'),
                      ElevatedButton(
                        onPressed: (){
                          Navigator.push(context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => const MyApp(),
                            ),
                          );
                        },
                        child: const Text('Don\'t worry, go and add now'),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}