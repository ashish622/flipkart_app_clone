import 'package:flutter/material.dart';

Widget GroceriesBasedOnActivity(BuildContext context) => Container(
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
                child: const Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 135,
                      child: Image(
                        image: AssetImage('assets/images/img_12.png'),
                        fit: BoxFit.contain,),
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
                child: const Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 135,
                      child: Image(
                        image: AssetImage('assets/images/img_13.png'),
                        fit: BoxFit.contain,),
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
                child: const Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 135,
                      child: Image(
                        image: AssetImage('assets/images/img_14.png'),
                        fit: BoxFit.contain,
                      ),
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
                child: const Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 135,
                      child: Image(
                        image: AssetImage('assets/images/img_12.png'),
                        fit: BoxFit.contain,),
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
                child: const Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 135,
                      child: Image(
                        image: AssetImage('assets/images/img_13.png'),
                        fit: BoxFit.contain,),
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
                child: const Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 135,
                      child: Image(
                        image: AssetImage('assets/images/img_14.png'),
                        fit: BoxFit.contain,
                      ),
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
);