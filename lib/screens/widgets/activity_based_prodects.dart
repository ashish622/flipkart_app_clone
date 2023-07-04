import 'package:flutter/material.dart';

Widget ActivityBasedProducts(BuildContext context) => Container(
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
                width: MediaQuery.of(context).size.width*0.27,
                height: 180,
                decoration: BoxDecoration(
                    border: Border.all(width: 1,color: Colors.black)
                ),
                child: const Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 135,
                      child: Image(
                        image: AssetImage('assets/images/product/img.png'),
                        fit: BoxFit.cover,),
                    ),
                    Text('Headphones',
                      style: TextStyle(fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                    Text('min 50% off',
                      style: TextStyle(fontSize: 12,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,),
                    ),
                    Text('Best deals',
                      style: TextStyle(fontSize: 12,
                        color: Colors.black26,),
                    ),
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
                child: const Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 135,
                      child: Image(
                        image: AssetImage('assets/images/product/img.png'),
                        fit: BoxFit.cover,),
                    ),
                    Text('Headphones',
                      style: TextStyle(fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                    Text('min 50% off',
                      style: TextStyle(fontSize: 12,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,),
                    ),
                    Text('Best deals',
                      style: TextStyle(fontSize: 12,
                        color: Colors.black26,),
                    ),
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
                child: const Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 135,
                      child: Image(
                        image: AssetImage('assets/images/product/img.png'),
                        fit: BoxFit.cover,),
                    ),
                    Text('Headphones',
                      style: TextStyle(fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                    Text('min 50% off',
                      style: TextStyle(fontSize: 12,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,),
                    ),
                    Text('Best deals',
                      style: TextStyle(fontSize: 12,
                        color: Colors.black26,),
                    ),
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
                child: const Column(
                  children: [
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
                child: const Column(
                  children: [
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
                child: const Column(
                  children: [
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
);