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
            Text("All Categories",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.search_outlined,size: 20,color: Colors.white,)),
                IconButton(onPressed: (){}, icon: Icon(Icons.mic,size: 20,color: Colors.white,))
              ],
            )
          ],
        )
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white
        ),
        child: SingleChildScrollView(
          child: Column(
              children: [
                // Main Categories
                Container(
                  width: double.infinity,
                  height: 300,
                  padding: EdgeInsets.all(4.0),
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
                            child: Image(image: AssetImage('assets/images/icons/img_6.png'),width: 45,height: 45,)
                          ),
                          Text('Offer Zone',style: TextStyle(fontSize: 10),)
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: MediaQuery.of(context).size.width*0.08,
                            backgroundColor: Colors.teal,
                            child: Image(image: AssetImage('assets/images/icons/img_7.png'),width: 45,height: 45,),
                          ),
                          Text('Groceries',style: TextStyle(fontSize: 10),)
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: MediaQuery.of(context).size.width*0.08,
                            backgroundColor: Colors.teal,
                            child: Image(image: AssetImage('assets/images/icons/img_8.png'),width: 45,height: 45,),
                          ),
                          Text('Mobiles',style: TextStyle(fontSize: 10),)
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: MediaQuery.of(context).size.width*0.08,
                            backgroundColor: Colors.teal,
                            child: Image(image: AssetImage('assets/images/icons/img_9.png',),width: 45,height: 45,),
                          ),
                          Text('fashion',style: TextStyle(fontSize: 10),)
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: MediaQuery.of(context).size.width*0.08,
                            backgroundColor: Colors.teal,
                            child: Image(image: AssetImage('assets/images/icons/img_10.png'),width: 45,height: 45,),
                          ),
                          Text('Gadgets',style: TextStyle(fontSize: 10),)
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: MediaQuery.of(context).size.width*0.08,
                            backgroundColor: Colors.teal,
                            child: Image(image: AssetImage('assets/images/icons/img_11.png'),width: 45,height: 45,),
                          ),
                          Text('Appliances',style: TextStyle(fontSize: 10),)
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: MediaQuery.of(context).size.width*0.08,
                            backgroundColor: Colors.teal,
                            child: Image(image: AssetImage('assets/images/icons/img_12.png'),width: 45,height: 45,),
                          ),
                          Text('Furniture',style: TextStyle(fontSize: 10),)
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: MediaQuery.of(context).size.width*0.08,
                            backgroundColor: Colors.teal,
                            child: Image(image: AssetImage('assets/images/icons/img_14.png'),width: 45,height: 45,),
                          ),
                          Text('Toys and kids',style: TextStyle(fontSize: 10),)
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: MediaQuery.of(context).size.width*0.08,
                            backgroundColor: Colors.teal,
                            child: Image(image: AssetImage('assets/images/icons/img_15.png'),width: 45,height: 65,),
                          ),
                          Text('Flights and hotels',style: TextStyle(fontSize: 10),)
                        ],
                      ),
                    ],
                  ),
                ),

                // More Categories
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
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
                  padding: EdgeInsets.all(4.0),
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
                              child: Image(image: AssetImage('assets/images/icons/img_6.png'),width: 45,height: 45,)
                          ),
                          Text('Offer Zone',style: TextStyle(fontSize: 10),)
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: MediaQuery.of(context).size.width*0.08,
                            backgroundColor: Colors.teal,
                            child: Image(image: AssetImage('assets/images/icons/img_7.png'),width: 45,height: 45,),
                          ),
                          Text('Groceries',style: TextStyle(fontSize: 10),)
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: MediaQuery.of(context).size.width*0.08,
                            backgroundColor: Colors.teal,
                            child: Image(image: AssetImage('assets/images/icons/img_8.png'),width: 45,height: 45,),
                          ),
                          Text('Mobiles',style: TextStyle(fontSize: 10),)
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: MediaQuery.of(context).size.width*0.08,
                            backgroundColor: Colors.teal,
                            child: Image(image: AssetImage('assets/images/icons/img_9.png',),width: 45,height: 45,),
                          ),
                          Text('fashion',style: TextStyle(fontSize: 10),)
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: MediaQuery.of(context).size.width*0.08,
                            backgroundColor: Colors.teal,
                            child: Image(image: AssetImage('assets/images/icons/img_10.png'),width: 45,height: 45,),
                          ),
                          Text('Gadgets',style: TextStyle(fontSize: 10),)
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: MediaQuery.of(context).size.width*0.08,
                            backgroundColor: Colors.teal,
                            child: Image(image: AssetImage('assets/images/icons/img_11.png'),width: 45,height: 45,),
                          ),
                          Text('Appliances',style: TextStyle(fontSize: 10),)
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: MediaQuery.of(context).size.width*0.08,
                            backgroundColor: Colors.teal,
                            child: Image(image: AssetImage('assets/images/icons/img_12.png'),width: 45,height: 45,),
                          ),
                          Text('Furniture',style: TextStyle(fontSize: 10),)
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: MediaQuery.of(context).size.width*0.08,
                            backgroundColor: Colors.teal,
                            child: Image(image: AssetImage('assets/images/icons/img_14.png'),width: 45,height: 45,),
                          ),
                          Text('Toys and kids',style: TextStyle(fontSize: 10),)
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: MediaQuery.of(context).size.width*0.08,
                            backgroundColor: Colors.teal,
                            child: Image(image: AssetImage('assets/images/icons/img_15.png'),width: 45,height: 65,),
                          ),
                          Text('Flights and hotels',style: TextStyle(fontSize: 10),)
                        ],
                      ),
                    ],
                  ),
                ),

                // Trending
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
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
                  decoration: BoxDecoration(
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
                                      color: Colors.green
                                  ),
                                  child: Column(
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
                                      color: Colors.cyan
                                  ),
                                  child: Column(
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
                                      color: Colors.blueAccent
                                  ),
                                  child: Column(
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
                                      color: Colors.orangeAccent
                                  ),
                                  child: Column(
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
