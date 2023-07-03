import 'package:flipkart_home/common/discount_screen.dart';
import 'package:flipkart_home/common/scroll_screen.dart';
import 'package:flipkart_home/common/suggested_screen.dart';
import 'package:flipkart_home/models/product_model.dart';
import 'package:flutter/material.dart';

import '../common/sponsored_product_screen.dart';


class FlipkartScreen extends StatefulWidget {
  const FlipkartScreen({Key? key}) : super(key: key);

  @override
  State<FlipkartScreen> createState() => _FlipkartScreenState();
}

class _FlipkartScreenState extends State<FlipkartScreen> {
  var val = false;
  final List<String> _images = [
    'assets/images/product/img_5.png',
    'assets/images/product/img_2.png',
    'assets/images/product/img_4.png',
    'assets/images/product/img_6.png',
  ];
  final List<String> _sponsored = [
    'assets/images/product/img_12.png',
    'assets/images/product/img_12.png',
    'assets/images/product/img_12.png',
  ];
  final List<String> _products = [
    'assets/images/product/img_12.png',
    'assets/images/product/img_13.png',
    'assets/images/product/img_16.png'
  ];
  List<ProductModel> product =[
    ProductModel(
      images: 'assets/images/img_5.png',
      name: 'fashion',
      price: 999,
      details: 'Traditional and Modern',
    ),
    ProductModel(
      images: 'assets/images/img_6.png',
      name: 'Home Appliances',
      price: 999,
      details: 'Best deals today',
    ),
    ProductModel(
      images: 'assets/images/product/img.png',
      name: 'Head phones',
      price: 999,
      details: 'Bigger Discounts',
    )
  ];
  final Map<String, String> discountedProducts = {
    'SmartPhones': 'assets/images/img_11.png',
    'SmartPhone': 'assets/images/img_11.png',
    'iPhones': 'assets/images/img_11.png',
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 80,
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text('Brand Mall',style: TextStyle(fontSize: 8,fontWeight: FontWeight.bold),),
                  Switch(value: val, onChanged: (bool value){
                    setState(() {
                      val = value;
                    });
                  }),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.75,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1, color: Colors.black12),
                  color: Colors.blueGrey.withOpacity(0.1),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: 'search for products',
                      disabledBorder: InputBorder.none,
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search_outlined,color: Colors.black26,size: 20,),
                      suffixIcon: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.mic_none_rounded,color: Colors.black26,size: 20,),
                          ),
                          IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.camera_alt,color: Colors.black26,size: 20,),
                          )
                        ],
                      )
                  ),
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //Products Slider
                SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 185,
                    child: ScrollScreen(images: _images,)
                ),

                // Scrollable menu icons
                Container(
                  height: 100,
                  padding: const EdgeInsets.all(10),
                  child:  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.blueGrey,
                                child: Image(image: AssetImage('assets/images/icons/img.png'),width: 15,height: 15,)
                              ),
                              Text('Super-coins',style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold))
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.blueGrey,
                                child: Icon(Icons.currency_rupee,color: Colors.greenAccent,size: 18,),
                              ),
                              Flexible(child: Text('NextGen Brands',style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),))
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.blueGrey,
                                child: Icon(Icons.currency_rupee,color: Colors.greenAccent,size: 18,),
                              ),
                              Text('Credit',style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.blueGrey,
                                child: Icon(Icons.currency_rupee,color: Colors.greenAccent,size: 18,),
                              ),
                              Text('LiveShop+',style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.blueGrey,
                                child: Icon(Icons.currency_rupee,color: Colors.greenAccent,size: 18,),
                              ),
                              Text('EMI',style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.blueGrey,
                                child: Image(image: AssetImage('assets/images/icons/img_1.png'),width: 15,height: 15,)
                              ),
                              Text('Students Club',style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.blueGrey,
                                child: Image(image: AssetImage('assets/images/icons/img_5.png'),width: 15,height: 15,)
                              ),
                              Text('Plus',style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.blueGrey,
                                child: Icon(Icons.group_outlined,color: Colors.yellow,size: 18,),
                              ),
                              Text('Group Buy',style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.blueGrey,
                                child: Icon(Icons.linked_camera, color: Colors.yellow,size: 18,)
                              ),
                              Text('Camera',style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.blueGrey,
                                child: Image(image: AssetImage('assets/images/icons/img_4.png'),width: 15,height: 15,),
                              ),
                              Text('Fire Drops',style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Suggestion and deals
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 120,
                  padding: const EdgeInsets.all(8.0),
                  child: SuggestedProducts(),
                ),

                //Discounts on products
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 450,
                  decoration: const BoxDecoration(
                    color: Colors.cyanAccent
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
                          height: 390,
                          width: double.infinity,
                          child: DiscountProduct(product: product,),
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding:  EdgeInsets.fromLTRB(10, 20, 10, 0),
                        child:  Text(
                          'Sponsored Products',
                          style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 300,
                        width: MediaQuery.of(context).size.width,
                        child: SponsoredProduct(productImage: _sponsored,),
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
                          child: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 16,),
                        ),
                        onTap: (){

                        },
                      )
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
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
                                width: MediaQuery.of(context).size.width*0.27,
                                height: 180,
                                decoration: BoxDecoration(
                                    border: Border.all(width: 1,color: Colors.black)
                                ),
                                child: Column(
                                  children: const [
                                    SizedBox(
                                      width: double.infinity,
                                      height: 135,
                                      child: Image(image: AssetImage('assets/images/product/img.png'),fit: BoxFit.cover,),
                                    ),
                                    Text('Headphones',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
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
                                    border: Border.all(width: 1,color: Colors.black)
                                ),
                                child: Column(
                                  children: const [
                                    SizedBox(
                                      width: double.infinity,
                                      height: 135,
                                      child: Image(image: AssetImage('assets/images/product/img_1.png'),fit: BoxFit.cover,),
                                    ),
                                    Text('Paintings',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                                    Text('Upto 60% off',style: TextStyle(fontSize: 12,color: Colors.green,fontWeight: FontWeight.bold),),
                                    Text('Big Discounts',style: TextStyle(fontSize: 12,color: Colors.black26),),
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
                                    border: Border.all(width: 1,color: Colors.black)
                                ),
                                child: Column(
                                  children: const [
                                    SizedBox(
                                      width: double.infinity,
                                      height: 135,
                                      child: Image(image: AssetImage('assets/images/product/img_3.png'),fit: BoxFit.cover,),
                                    ),
                                    Text('Artificial Plants',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                                    Text('Upto 80% off',style: TextStyle(fontSize: 12,color: Colors.green,fontWeight: FontWeight.bold),),
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
                                width: MediaQuery.of(context).size.width*0.27,
                                height: 180,
                                decoration: BoxDecoration(
                                    border: Border.all(width: 1,color: Colors.black)
                                ),
                                child: Column(
                                  children: const [
                                    SizedBox(
                                      width: double.infinity,
                                      height: 135,
                                      child: Image(image: AssetImage('assets/images/product/img.png'),fit: BoxFit.cover,),
                                    ),
                                    Text('Headphones',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
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
                                    border: Border.all(width: 1,color: Colors.black)
                                ),
                                child: Column(
                                  children: const [
                                    SizedBox(
                                      width: double.infinity,
                                      height: 135,
                                      child: Image(image: AssetImage('assets/images/product/img_1.png'),fit: BoxFit.cover,),
                                    ),
                                    Text('Paintings',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                                    Text('Upto 60% off',style: TextStyle(fontSize: 12,color: Colors.green,fontWeight: FontWeight.bold),),
                                    Text('Big Discounts',style: TextStyle(fontSize: 12,color: Colors.black26),),
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
                                    border: Border.all(width: 1,color: Colors.black)
                                ),
                                child: Column(
                                  children: const [
                                    SizedBox(
                                      width: double.infinity,
                                      height: 135,
                                      child: Image(image: AssetImage('assets/images/product/img_3.png'),fit: BoxFit.cover,),
                                    ),
                                    Text('Artificial Plants',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                                    Text('Upto 80% off',style: TextStyle(fontSize: 12,color: Colors.green,fontWeight: FontWeight.bold),),
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

                // Featured Collection
                Container(
                  height: 230,
                  color: Colors.green.withOpacity(0.7),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: const Text('Featured on FLipkart',style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white)),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
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
                                    children: const [
                                      SizedBox(
                                        width: double.infinity,
                                        height: 130,
                                        child: Image(image: AssetImage('assets/images/product/img.png'),fit: BoxFit.cover,),
                                      ),
                                      Text('Headphones',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
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
                                    children: const [
                                      SizedBox(
                                        width: double.infinity,
                                        height: 130,
                                        child: Image(image: AssetImage('assets/images/product/img.png'),fit: BoxFit.cover,),
                                      ),
                                      Text('Headphones',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
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
                                    children: const [
                                      SizedBox(
                                        width: double.infinity,
                                        height: 130,
                                        child: Image(image: AssetImage('assets/images/product/img.png'),fit: BoxFit.cover,),
                                      ),
                                      Text('Headphones',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
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
                                    children: const [
                                      SizedBox(
                                        width: double.infinity,
                                        height: 130,
                                        child: Image(image: AssetImage('assets/images/product/img.png'),fit: BoxFit.cover,),
                                      ),
                                      Text('Headphones',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
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
                                    children: const [
                                      SizedBox(
                                        width: double.infinity,
                                        height: 130,
                                        child: Image(image: AssetImage('assets/images/product/img.png'),fit: BoxFit.cover,),
                                      ),
                                      Text('Headphones',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
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
                                    children: const [
                                      SizedBox(
                                        width: double.infinity,
                                        height: 130,
                                        child: Image(image: AssetImage('assets/images/product/img.png'),fit: BoxFit.cover,),
                                      ),
                                      Text('Headphones',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
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
                                    children: const [
                                      SizedBox(
                                        width: double.infinity,
                                        height: 130,
                                        child: Image(image: AssetImage('assets/images/product/img.png'),fit: BoxFit.cover,),
                                      ),
                                      Text('Headphones',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
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
