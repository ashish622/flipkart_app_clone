import 'package:flipkart_home/main.dart';
import 'package:flutter/material.dart';

class ShoppingCartScreen extends StatefulWidget {
 const ShoppingCartScreen({Key? key}) : super(key: key);

  @override
  State<ShoppingCartScreen> createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {

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
                      Container(
                        color: Colors.white10,
                        height: MediaQuery.of(context).size.height*0.75,
                        width: double.infinity,
                        child: Stack(
                          children: [
                            ListView.builder(
                              itemCount: 4,
                              itemBuilder: (BuildContext context, index){
                                var count=1;
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 90,
                                    color: Colors.white,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          children: [
                                            const Image(
                                              image: AssetImage('assets/images/img_14.png'),
                                              width: 70,
                                              height: 60,
                                            ),
                                            SizedBox(
                                              height: 25,
                                              width: 120,
                                              child: Row(
                                                children: [
                                                  IconButton(
                                                    onPressed: (){
                                                      if (count>0){
                                                        setState(() {
                                                          count = count - 1;
                                                        });
                                                      }
                                                    },
                                                    icon: const Icon(
                                                      Icons.remove_circle_outline,
                                                      color: Colors.blue,
                                                    ),
                                                  ),
                                                  Text('$count'),
                                                  IconButton(
                                                    onPressed: (){
                                                      if (count<10){
                                                        setState(() {
                                                          count = count + 1;
                                                        });
                                                      }
                                                    },
                                                    icon: const Icon(
                                                      Icons.add_circle_outline,
                                                      color: Colors.blue,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        const Column(
                                          children: [
                                            Text('Dobour red toothpaste',
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text('For Strong tooth and Fresh breathes',
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.black,
                                              ),
                                            ),
                                            Text('\$9',
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                            Positioned(
                              bottom: 4,
                              right: 4,
                              child: Container(
                                height: 60,
                                width: MediaQuery.of(context).size.width*0.9,
                                color: Colors.white,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width*0.40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(16),
                                          color: Colors.yellow
                                      ),
                                      child: TextButton(
                                        onPressed: (){
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (BuildContext context) => MyApp(),
                                            ),
                                          );
                                        },
                                        child: const Text('Add More',
                                          style: TextStyle(
                                              color: Colors.green
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 20,),
                                    Container(
                                      width: MediaQuery.of(context).size.width*0.40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        color: Colors.green
                                      ),
                                      child: TextButton(
                                        onPressed: (){
                                        },
                                        child: const Text(
                                          'Checkout',
                                          style: TextStyle(
                                            color: Colors.yellow
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ]
                        )
                      ),
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