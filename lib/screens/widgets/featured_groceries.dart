import 'package:flutter/material.dart';

Widget FeaturedGroceries(BuildContext context) => Container(
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
);