import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("All Categories",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(onPressed: (){}, 
                    icon: const Icon(Icons.search_outlined,size: 20,color: Colors.white,)
                ),
                IconButton(onPressed: (){}, 
                    icon: const Icon(Icons.mic,size: 20,color: Colors.white,)
                )
              ],
            )
          ],
        )
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Colors.white
        ),
        child: SingleChildScrollView(
          child: Column(
              children: [
                // Main Categories
                Container(
                  width: double.infinity,
                  height: 300,
                  padding: const EdgeInsets.all(4.0),
                  child: GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(5),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 4,
                    children: <Widget>[
                      Column(
                        children: [
                          CircleAvatar(
                            radius: MediaQuery.of(context).size.width*0.08,
                            backgroundColor: Colors.teal,
                            child: const Image(image: AssetImage('assets/images/icons/img_6.png'),width: 45,height: 45,)
                          ),
                          const Text('Offer Zone',style: TextStyle(fontSize: 10),)
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: MediaQuery.of(context).size.width*0.08,
                            backgroundColor: Colors.teal,
                            child: const Image(image: AssetImage('assets/images/icons/img_7.png'),width: 45,height: 45,),
                          ),
                          const Text('Groceries',style: TextStyle(fontSize: 10),)
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: MediaQuery.of(context).size.width*0.08,
                            backgroundColor: Colors.teal,
                            child: const Image(image: AssetImage('assets/images/icons/img_8.png'),width: 45,height: 45,),
                          ),
                          const Text('Mobiles',style: TextStyle(fontSize: 10),)
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: MediaQuery.of(context).size.width*0.08,
                            backgroundColor: Colors.teal,
                            child: const Image(image: AssetImage('assets/images/icons/img_9.png',),width: 45,height: 45,),
                          ),
                          const Text('fashion',style: TextStyle(fontSize: 10),)
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: MediaQuery.of(context).size.width*0.08,
                            backgroundColor: Colors.teal,
                            child: const Image(image: AssetImage('assets/images/icons/img_10.png'),width: 45,height: 45,),
                          ),
                          const Text('Gadgets',style: TextStyle(fontSize: 10),)
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: MediaQuery.of(context).size.width*0.08,
                            backgroundColor: Colors.teal,
                            child: const Image(image: AssetImage('assets/images/icons/img_11.png'),width: 45,height: 45,),
                          ),
                          const Text('Appliances',style: TextStyle(fontSize: 10),)
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: MediaQuery.of(context).size.width*0.08,
                            backgroundColor: Colors.teal,
                            child: const Image(image: AssetImage('assets/images/icons/img_12.png'),width: 45,height: 45,),
                          ),
                          const Text('Furniture',style: TextStyle(fontSize: 10),)
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: MediaQuery.of(context).size.width*0.08,
                            backgroundColor: Colors.teal,
                            child: const Image(image: AssetImage('assets/images/icons/img_14.png'),width: 45,height: 45,),
                          ),
                          const Text('Toys and kids',style: TextStyle(fontSize: 10),)
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: MediaQuery.of(context).size.width*0.08,
                            backgroundColor: Colors.teal,
                            child: const Image(image: AssetImage('assets/images/icons/img_15.png'),width: 45,height: 65,),
                          ),
                          const Text('Flights and hotels',style: TextStyle(fontSize: 10),)
                        ],
                      ),
                    ],
                  ),
                ),

                // More Categories
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('More On Flipkart',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                    SizedBox(width:10),
                    Expanded(
                      child: Divider(
                        thickness: 1.0,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
                Container(
                  width: double.infinity,
                  height: 300,
                  padding: const EdgeInsets.all(4.0),
                  child: GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(5),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 4,
                    children: <Widget>[
                      Column(
                        children: [
                          CircleAvatar(
                              radius: MediaQuery.of(context).size.width*0.08,
                              backgroundColor: Colors.teal,
                              child: const Image(image: AssetImage('assets/images/icons/img_6.png'),width: 45,height: 45,)
                          ),
                          const Text('Offer Zone',style: TextStyle(fontSize: 10),)
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: MediaQuery.of(context).size.width*0.08,
                            backgroundColor: Colors.teal,
                            child: const Image(image: AssetImage('assets/images/icons/img_7.png'),width: 45,height: 45,),
                          ),
                          const Text('Groceries',style: TextStyle(fontSize: 10),)
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: MediaQuery.of(context).size.width*0.08,
                            backgroundColor: Colors.teal,
                            child: const Image(image: AssetImage('assets/images/icons/img_8.png'),width: 45,height: 45,),
                          ),
                          const Text('Mobiles',style: TextStyle(fontSize: 10),)
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: MediaQuery.of(context).size.width*0.08,
                            backgroundColor: Colors.teal,
                            child: const Image(image: AssetImage('assets/images/icons/img_9.png',),width: 45,height: 45,),
                          ),
                          const Text('fashion',style: TextStyle(fontSize: 10),)
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: MediaQuery.of(context).size.width*0.08,
                            backgroundColor: Colors.teal,
                            child: const Image(image: AssetImage('assets/images/icons/img_10.png'),width: 45,height: 45,),
                          ),
                          const Text('Gadgets',style: TextStyle(fontSize: 10),)
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: MediaQuery.of(context).size.width*0.08,
                            backgroundColor: Colors.teal,
                            child: const Image(image: AssetImage('assets/images/icons/img_11.png'),width: 45,height: 45,),
                          ),
                          const Text('Appliances',style: TextStyle(fontSize: 10),)
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: MediaQuery.of(context).size.width*0.08,
                            backgroundColor: Colors.teal,
                            child: const Image(image: AssetImage('assets/images/icons/img_12.png'),width: 45,height: 45,),
                          ),
                          const Text('Furniture',style: TextStyle(fontSize: 10),)
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: MediaQuery.of(context).size.width*0.08,
                            backgroundColor: Colors.teal,
                            child: const Image(image: AssetImage('assets/images/icons/img_14.png'),width: 45,height: 45,),
                          ),
                          const Text('Toys and kids',style: TextStyle(fontSize: 10),)
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: MediaQuery.of(context).size.width*0.08,
                            backgroundColor: Colors.teal,
                            child: const Image(image: AssetImage('assets/images/icons/img_15.png'),width: 45,height: 65,),
                          ),
                          const Text('Flights and hotels',style: TextStyle(fontSize: 10),)
                        ],
                      ),
                    ],
                  ),
                ),

                // Trending
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Trending Stores',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                    SizedBox(width:10),
                    Expanded(
                      child: Divider(
                        thickness: 1.0,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 450,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 390,
                          width: double.infinity,
                          child: GridView.count(
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
                                  decoration: BoxDecoration(
                                    border: Border.all(width: 0.5, color: Colors.black),
                                      borderRadius: BorderRadius.circular(2),
                                      color: Colors.green
                                  ),
                                  child: const Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Image(image: AssetImage('assets/images/img_2.png'),fit: BoxFit.cover,),
                                      Text('Electronic Gadgets'),
                                    ],
                                  )
                              ),
                              Container(
                                  height: 40,
                                  width: 50,
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2),
                                    border: Border.all(width: 0.5, color: Colors.black),
                                    color: Colors.cyan,
                                  ),
                                  child: const Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Image(image: AssetImage('assets/images/img_4.png'),),
                                      Text('Clothing'),
                                    ],
                                  )
                              ),
                              Container(
                                  height: 40,
                                  width: 50,
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Colors.blueAccent,
                                    borderRadius: BorderRadius.circular(2),
                                    border: Border.all(width: 0.5, color: Colors.black),
                                  ),
                                  child: const Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Image(image: AssetImage('assets/images/img_5.png'),),
                                      Text('Women\'s Clothing'),
                                    ],
                                  )
                              ),
                              Container(
                                  height: 40,
                                  width: 50,
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Colors.orangeAccent,
                                    border: Border.all(width: 0.5, color: Colors.black),
                                    borderRadius: BorderRadius.circular(2)
                                  ),
                                  child: const Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Image(image: AssetImage('assets/images/img_6.png')),
                                      Text('Aplianes'),
                                    ],
                                  )
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
          ),
        ),
      )
    );
  }
}
