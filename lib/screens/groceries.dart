import 'package:flipkart_home/screens/common/discount_screen.dart';
import 'package:flipkart_home/screens/common/sponsored_product_screen.dart';
import 'package:flipkart_home/screens/common/suggested_screen.dart';
import 'package:flutter/material.dart';

import 'common/scroll_screen.dart';

class GroceryScreen extends StatefulWidget {
  const GroceryScreen({Key? key}) : super(key: key);

  @override
  State<GroceryScreen> createState() => _GroceryScreenState();
}

class _GroceryScreenState extends State<GroceryScreen> {
  var val = false;
  final List<String> _images = [
    'assets/images/product/img_7.png',
    'assets/images/product/img_8.png',
    'assets/images/product/img_9.png',
    'assets/images/product/img_10.png',
    'assets/images/product/img_14.png',
  ];
  final List<String> _products = [
    'assets/images/product/img_15.png',
    'assets/images/product/img_15.png',
    'assets/images/product/img_15.png'
  ];
  final List<String> discountedProducts = [
    'assets/images/img_11.png',
    'assets/images/img_11.png',
    'assets/images/img_11.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
      // Search and brand filter
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.black54),
              color: Colors.white12,
              borderRadius: BorderRadius.circular(8),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                  labelText: 'search for products',
                  disabledBorder: InputBorder.none,
                  border: InputBorder.none,
                  prefixIcon: const Icon(
                    Icons.search_outlined,color: Colors.black26,size: 20,
                  ),
                  suffixIcon: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: (){},
                        icon: const Icon(Icons.checklist,color: Colors.black54,size: 20,),
                      ),
                      IconButton(
                        onPressed: (){},
                        icon: const Icon(Icons.mic,color: Colors.black54,size: 20,),
                      )
                    ],
                  )
              ),
            ),
          ),
        ),

        // ScrollScreen
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:[
                // Delivery Location
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    height: 55,
                    color: Colors.transparent,
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.location_on,color: Colors.blue,size: 30,),
                            RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: '  Deliver to pincode  ',
                                    style: TextStyle(
                                      color: Colors.black,
                                    )
                                  ),
                                  TextSpan(
                                    text: '226028, Lucknow',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    )
                                  )
                                ]
                              ),
                            ),
                          ],
                        ),

                        Container(
                          width: 70,
                          height: 35,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1,color: Colors.black12)
                          ),
                          child: TextButton(
                            onPressed: (){},
                            child: const Text('Change',style: TextStyle(color: Colors.blue),),
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                // Earliest Delivery By
                Container(
                  width: double.infinity,
                  height: 35,
                  padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
                  color: Colors.yellow.withOpacity(0.3),
                  child: const Text('Earliest delivery slot by',
                      style: TextStyle(
                        fontSize: 12,color: Colors.black,
                        fontWeight: FontWeight.bold,
                      )
                  ),
                ),

                // Scrollable menu icons
                Container(
                  height: 150,
                  padding: const EdgeInsets.all(10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // Shopping List
                        Container(
                          width: 100,
                          height: 100,
                          padding: const EdgeInsets.all(5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(
                                  radius: 25,
                                  backgroundColor: Colors.orangeAccent.withOpacity(0.4),
                                  child: const Image(
                                    image: AssetImage('assets/images/icons/img_16.png',),
                                    width: 25,height: 25,
                                  )
                              ),
                              const Flexible(
                                  child: Text(
                                      'My Shopping List',
                                      style: TextStyle(
                                        fontSize: 12, fontWeight: FontWeight.bold,
                                      ),
                                    textAlign: TextAlign.center,
                                  ),
                              )
                            ],
                          ),
                        ),
                        // All Categories
                        Container(
                          width: 100,
                          height: 100,
                          padding: const EdgeInsets.all(5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(
                                  radius: 25,
                                  backgroundColor: Colors.orangeAccent.withOpacity(0.4),
                                  child: const Image(
                                    image: AssetImage('assets/images/icons/img_17.png',),
                                    width: 25,height: 25,
                                  )
                              ),
                              const Flexible(
                                child: Text(
                                  'All Categories',
                                  style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ],
                          ),
                        ),
                        // Noodles and Pasta
                        Container(
                          width: 100,
                          height: 100,
                          padding: const EdgeInsets.all(5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(
                                  radius: 25,
                                  backgroundColor: Colors.orangeAccent.withOpacity(0.4),
                                  child: const Image(
                                    image: AssetImage('assets/images/icons/img_23.png',),
                                    width: 25,height: 25,
                                  )
                              ),
                              const Flexible(
                                child: Text(
                                  'Noodles and Pasta',
                                  style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ],
                          ),
                        ),
                        // Dry Fruits and Seeds
                        Container(
                          width: 100,
                          height: 100,
                          padding: const EdgeInsets.all(5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(
                                  radius: 25,
                                  backgroundColor: Colors.orangeAccent.withOpacity(0.4),
                                  child: const Image(
                                    image: AssetImage('assets/images/icons/img_19.png',),
                                    width: 25,height: 25,
                                  )
                              ),
                              const Flexible(
                                child: Text(
                                  'Dry Fruits and Seeds',
                                  style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ],
                          ),
                        ),
                        // Oral care
                        Container(
                          width: 100,
                          height: 100,
                          padding: const EdgeInsets.all(5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(
                                  radius: 25,
                                  backgroundColor: Colors.orangeAccent.withOpacity(0.4),
                                  child: const Image(
                                    image: AssetImage('assets/images/icons/img_20.png',),
                                    width: 25,height: 25,
                                  )
                              ),
                              const Flexible(
                                child: Text(
                                  'Oral Care',
                                  style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ],
                          ),
                        ),
                        // Detergent and Cleaning
                        Container(
                          width: 100,
                          height: 100,
                          padding: const EdgeInsets.all(5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(
                                  radius: 25,
                                  backgroundColor: Colors.orangeAccent.withOpacity(0.4),
                                  child: const Image(
                                    image: AssetImage('assets/images/icons/img_21.png',),
                                    width: 25,height: 25,
                                  )
                              ),
                              const Flexible(
                                child: Text(
                                  'Detergent and Cleaning',
                                  style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ],
                          ),
                        ),
                        // Skin and Body Care
                        Container(
                          width: 100,
                          height: 100,
                          padding: const EdgeInsets.all(5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(
                                  radius: 25,
                                  backgroundColor: Colors.orangeAccent.withOpacity(0.4),
                                  child: const Image(
                                    image: AssetImage('assets/images/icons/img_22.png',),
                                    width: 25,height: 25,
                                  )
                              ),
                              const Flexible(
                                child: Text(
                                  'Skin and Body Care',
                                  style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ],
                          ),
                        ),
                        // Beverages
                        Container(
                          width: 100,
                          height: 100,
                          padding: const EdgeInsets.all(5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(
                                  radius: 25,
                                  backgroundColor: Colors.orangeAccent.withOpacity(0.4),
                                  child: const Image(
                                    image: AssetImage('assets/images/icons/img_24.png',),
                                    width: 25,height: 25,
                                  )
                              ),
                              const Flexible(
                                child: Text(
                                  'Beverages',
                                  style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                //Products Slider
                SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    child: ScrollScreen(images: _images,)
                ),

                // Suggestion and deals
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 120,
                  padding: const EdgeInsets.all(8.0),
                  child: SuggestedProducts(products: _products,)
                ),

                //Discounts on products
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 450,
                  decoration: BoxDecoration(
                      color: Colors.greenAccent.withOpacity(0.4)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Discounts for you',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),),
                            InkWell(
                              child: Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.purple
                                ),
                                child: const Center(
                                  child: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 14,),
                                ),
                              ),
                              onTap: (){},
                            )
                          ],
                        ),
                        SizedBox(
                          height: 400,
                          width: double.infinity,
                          child: DiscountProduct(discounted: discountedProducts,)
                        )
                      ],
                    ),
                  ),
                ),

                //Sponsored products
                SizedBox(
                  height: 350,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      const Padding(
                        padding:  EdgeInsets.fromLTRB(10, 20, 10, 10),
                        child:  Text(
                          'Sponsored Products',
                          style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 300,
                        width: MediaQuery.of(context).size.width,
                        child: const SponsoredProduct(),
                      ),
                    ],
                  ),
                ),

                //  Suggestions Based on Activity
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 12, 8, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Suggested for  You',style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                          Text('Based on Your Activity',style: TextStyle(fontSize: 10,),),
                        ],
                      ),
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.purple
                          ),
                          width: 20,
                          height: 20,
                          child: const Icon(Icons.arrow_forward_ios,color: Colors.white,size: 16,),
                        ),
                        onTap: (){

                        },
                      )
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(8.0),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
                            child: InkWell(
                              onTap: (){},
                              child: Container(
                                width: MediaQuery.of(context).size.width*0.28,
                                height: 195,
                                decoration: BoxDecoration(
                                    border: Border.all(width: 1,color: Colors.black)
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width: double.infinity,
                                      height: 135,
                                      child: Image(
                                        image: AssetImage('assets/images/img_12.png'),
                                        fit: BoxFit.cover,),
                                    ),
                                    Text('Tea and Beverages',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                                    Text('min 50% off',style: TextStyle(fontSize: 12,color: Colors.green,fontWeight: FontWeight.bold),),
                                    Text('Best deals',style: TextStyle(fontSize: 12,color: Colors.black26),),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
                            child: InkWell(
                              onTap: (){},
                              child: Container(
                                width: MediaQuery.of(context).size.width*0.28,
                                height: 195,
                                decoration: BoxDecoration(
                                    border: Border.all(width: 1,color: Colors.black)
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width: double.infinity,
                                      height: 135,
                                      child: Image(
                                        image: AssetImage('assets/images/img_13.png'),
                                        fit: BoxFit.cover,),
                                    ),
                                    Text('snacks & Biscuits',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                                    Text('Up to 60% off',style: TextStyle(fontSize: 12,color: Colors.green,fontWeight: FontWeight.bold),),
                                    Text('Limited time offer',style: TextStyle(fontSize: 12,color: Colors.black26),),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
                            child: InkWell(
                              onTap: (){},
                              child: Container(
                                width: MediaQuery.of(context).size.width*0.28,
                                height: 195,
                                decoration: BoxDecoration(
                                    border: Border.all(width: 1,color: Colors.black)
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width: double.infinity,
                                      height: 135,
                                      child: Image(image: AssetImage('assets/images/img_14.png'),fit: BoxFit.cover,),
                                    ),
                                    Text('Oral care',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                                    Text('Up to 80% off',style: TextStyle(fontSize: 12,color: Colors.green,fontWeight: FontWeight.bold),),
                                    Text('Big discounts',style: TextStyle(fontSize: 12,color: Colors.black26),),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
                            child: InkWell(
                              onTap: (){},
                              child: Container(
                                width: MediaQuery.of(context).size.width*0.28,
                                height: 195,
                                decoration: BoxDecoration(
                                    border: Border.all(width: 1,color: Colors.black)
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width: double.infinity,
                                      height: 135,
                                      child: Image(
                                        image: AssetImage('assets/images/img_12.png'),
                                        fit: BoxFit.cover,),
                                    ),
                                    Text('Tea and Beverages',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                                    Text('min 50% off',style: TextStyle(fontSize: 12,color: Colors.green,fontWeight: FontWeight.bold),),
                                    Text('Best deals',style: TextStyle(fontSize: 12,color: Colors.black26),),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
                            child: InkWell(
                              onTap: (){},
                              child: Container(
                                width: MediaQuery.of(context).size.width*0.28,
                                height: 195,
                                decoration: BoxDecoration(
                                    border: Border.all(width: 1,color: Colors.black)
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width: double.infinity,
                                      height: 135,
                                      child: Image(
                                        image: AssetImage('assets/images/img_13.png'),
                                        fit: BoxFit.cover,),
                                    ),
                                    Text('snacks & Biscuits',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                                    Text('Up to 60% off',style: TextStyle(fontSize: 12,color: Colors.green,fontWeight: FontWeight.bold),),
                                    Text('Limited time offer',style: TextStyle(fontSize: 12,color: Colors.black26),),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
                            child: InkWell(
                              onTap: (){},
                              child: Container(
                                width: MediaQuery.of(context).size.width*0.28,
                                height: 195,
                                decoration: BoxDecoration(
                                    border: Border.all(width: 1,color: Colors.black)
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width: double.infinity,
                                      height: 135,
                                      child: Image(image: AssetImage('assets/images/img_14.png'),fit: BoxFit.cover,),
                                    ),
                                    Text('Oral care',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                                    Text('Up to 80% off',style: TextStyle(fontSize: 12,color: Colors.green,fontWeight: FontWeight.bold),),
                                    Text('Big discounts',style: TextStyle(fontSize: 12,color: Colors.black26),),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // Flipkart Fresh
                const Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
                  child: Text(
                    'Flipkart Fresh',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black
                    ),
                  ),
                ),
                Container(
                  height: 420,
                  width: double.infinity,
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    height: 400,
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
                            decoration: const BoxDecoration(
                                color: Colors.white
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image(image: AssetImage('assets/images/product/img_17.png')),
                                Text('Tomatoes'),
                                Text('Best Deals on vegetables',
                                  style: TextStyle(color: Colors.green),),
                              ],
                            )
                        ),
                        Container(
                            height: 40,
                            width: 50,
                            padding: const EdgeInsets.all(8),
                            decoration: const BoxDecoration(
                                color: Colors.white
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image(image: AssetImage('assets/images/product/img_19.png')),
                                Text('Fresh Broccoli'),
                                Text('100% fresh to home',
                                  style: TextStyle(color: Colors.green),),
                              ],
                            )
                        ),
                        Container(
                            height: 40,
                            width: 50,
                            padding: const EdgeInsets.all(8),
                            decoration: const BoxDecoration(
                                color: Colors.white
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image(image: AssetImage('assets/images/product/img_19.png')),
                                Text('Fresh Broccoli'),
                                Text('100% fresh to home',
                                  style: TextStyle(color: Colors.green),),
                              ],
                            )
                        ),
                        Container(
                            height: 40,
                            width: 50,
                            padding: const EdgeInsets.all(8),
                            decoration: const BoxDecoration(
                                color: Colors.white
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image(image: AssetImage('assets/images/product/img_17.png')),
                                Text('Tomatoes'),
                                Text('Best Deals on vegetables',
                                  style: TextStyle(color: Colors.green),),
                              ],
                            )
                        ),
                      ],
                    ),
                  )
                ),
                // Featured Collection
                Container(
                  height: 230,
                  color: Colors.greenAccent.withOpacity(0.6),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Featured on Flipkart',style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white)),
                      ),
                      // Featured Product ScrollView
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 10, 0),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
                                child: InkWell(
                                  onTap: (){},
                                  child: Container(
                                    width: MediaQuery.of(context).size.width*0.27,
                                    height: 180,
                                    decoration: BoxDecoration(
                                      border: Border.all(width: 2,color: Colors.white),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          width: double.infinity,
                                          height: 130,
                                          child: Image(image: AssetImage('assets/images/img_11.png'),fit: BoxFit.cover,),
                                        ),
                                        Text('Cereals',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                                        Text('min 50% off',style: TextStyle(fontSize: 12,color: Colors.green,fontWeight: FontWeight.bold),),
                                        Text('Best deals',style: TextStyle(fontSize: 12,color: Colors.black26),),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
                                child: InkWell(
                                  onTap: (){},
                                  child: Container(
                                    width: MediaQuery.of(context).size.width*0.27,
                                    height: 180,
                                    decoration: BoxDecoration(
                                      border: Border.all(width: 2,color: Colors.white),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          width: double.infinity,
                                          height: 130,
                                          child: Image(image: AssetImage('assets/images/img_15.png'),fit: BoxFit.cover,),
                                        ),
                                        Text('Hair Care',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                                        Text('min 50% off',style: TextStyle(fontSize: 12,color: Colors.green,fontWeight: FontWeight.bold),),
                                        Text('Best deals',style: TextStyle(fontSize: 12,color: Colors.black26),),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
                                child: InkWell(
                                  onTap: (){},
                                  child: Container(
                                    width: MediaQuery.of(context).size.width*0.27,
                                    height: 180,
                                    decoration: BoxDecoration(
                                      border: Border.all(width: 2,color: Colors.white),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          width: double.infinity,
                                          height: 130,
                                          child: Image(image: AssetImage('assets/images/img_16.png'),fit: BoxFit.cover,),
                                        ),
                                        Text('Face & Body wash',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                                        Text('min 50% off',style: TextStyle(fontSize: 12,color: Colors.green,fontWeight: FontWeight.bold),),
                                        Text('Best deals',style: TextStyle(fontSize: 12,color: Colors.black26),),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
                                child: InkWell(
                                  onTap: (){},
                                  child: Container(
                                    width: MediaQuery.of(context).size.width*0.27,
                                    height: 180,
                                    decoration: BoxDecoration(
                                      border: Border.all(width: 2,color: Colors.white),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          width: double.infinity,
                                          height: 130,
                                          child: Image(image: AssetImage('assets/images/img_17.png'),fit: BoxFit.cover,),
                                        ),
                                        Text('Repellent products',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                                        Text('min 50% off',style: TextStyle(fontSize: 12,color: Colors.green,fontWeight: FontWeight.bold),),
                                        Text('Best deals',style: TextStyle(fontSize: 12,color: Colors.black26),),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
                                child: InkWell(
                                  onTap: (){},
                                  child: Container(
                                    width: MediaQuery.of(context).size.width*0.27,
                                    height: 180,
                                    decoration: BoxDecoration(
                                      border: Border.all(width: 2,color: Colors.white),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          width: double.infinity,
                                          height: 130,
                                          child: Image(image: AssetImage('assets/images/img_11.png'),fit: BoxFit.cover,),
                                        ),
                                        Text('Cereals',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                                        Text('min 50% off',style: TextStyle(fontSize: 12,color: Colors.green,fontWeight: FontWeight.bold),),
                                        Text('Best deals',style: TextStyle(fontSize: 12,color: Colors.black26),),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
                                child: InkWell(
                                  onTap: (){},
                                  child: Container(
                                    width: MediaQuery.of(context).size.width*0.27,
                                    height: 180,
                                    decoration: BoxDecoration(
                                      border: Border.all(width: 2,color: Colors.white),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          width: double.infinity,
                                          height: 130,
                                          child: Image(image: AssetImage('assets/images/img_15.png'),fit: BoxFit.cover,),
                                        ),
                                        Text('Hair Care',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                                        Text('min 50% off',style: TextStyle(fontSize: 12,color: Colors.green,fontWeight: FontWeight.bold),),
                                        Text('Best deals',style: TextStyle(fontSize: 12,color: Colors.black26),),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
                                child: InkWell(
                                  onTap: (){},
                                  child: Container(
                                    width: MediaQuery.of(context).size.width*0.27,
                                    height: 180,
                                    decoration: BoxDecoration(
                                      border: Border.all(width: 2,color: Colors.white),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          width: double.infinity,
                                          height: 130,
                                          child: Image(image: AssetImage('assets/images/img_16.png'),fit: BoxFit.cover,),
                                        ),
                                        Text('Face & Body wash',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                                        Text('min 50% off',style: TextStyle(fontSize: 12,color: Colors.green,fontWeight: FontWeight.bold),),
                                        Text('Best deals',style: TextStyle(fontSize: 12,color: Colors.black26),),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
                                child: InkWell(
                                  onTap: (){},
                                  child: Container(
                                    width: MediaQuery.of(context).size.width*0.27,
                                    height: 180,
                                    decoration: BoxDecoration(
                                      border: Border.all(width: 2,color: Colors.white),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          width: double.infinity,
                                          height: 130,
                                          child: Image(image: AssetImage('assets/images/img_17.png'),fit: BoxFit.cover,),
                                        ),
                                        Text('Repellent products',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                                        Text('min 50% off',style: TextStyle(fontSize: 12,color: Colors.green,fontWeight: FontWeight.bold),),
                                        Text('Best deals',style: TextStyle(fontSize: 12,color: Colors.black26),),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
