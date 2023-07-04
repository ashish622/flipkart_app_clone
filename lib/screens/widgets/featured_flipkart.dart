import 'package:flutter/material.dart';

Widget Featured(BuildContext context) => Container(
  height: 230,
  color: Colors.green.withOpacity(0.7),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text('Featured on FLip kart',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,
                color: Colors.white)
        ),
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
                  child: const Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 130,
                        child: Image(
                          image: AssetImage('assets/images/product/img.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text('Headphones',
                        style: TextStyle(fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      Text('min 50% off',
                        style: TextStyle(fontSize: 12,color: Colors.green,
                            fontWeight: FontWeight.bold),
                      ),
                      Text('Best deals',
                        style: TextStyle(fontSize: 12,color: Colors.black26),
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
                    border: Border.all(width: 2,color: Colors.white),
                    color: Colors.white,
                  ),
                  child: const Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 130,
                        child: Image(
                          image: AssetImage('assets/images/product/img.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text('Headphones',
                        style: TextStyle(fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      Text('min 50% off',
                        style: TextStyle(fontSize: 12,color: Colors.green,
                            fontWeight: FontWeight.bold),
                      ),
                      Text('Best deals',
                        style: TextStyle(fontSize: 12,color: Colors.black26),
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
                    border: Border.all(width: 2,color: Colors.white),
                    color: Colors.white,
                  ),
                  child: const Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 130,
                        child: Image(
                          image: AssetImage('assets/images/product/img.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text('Headphones',
                        style: TextStyle(fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      Text('min 50% off',
                        style: TextStyle(fontSize: 12,
                            color: Colors.green,fontWeight: FontWeight.bold),
                      ),
                      Text('Best deals',
                        style: TextStyle(fontSize: 12,color: Colors.black26),
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
                    border: Border.all(width: 2,color: Colors.white),
                    color: Colors.white,
                  ),
                  child: const Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 130,
                        child: Image(
                          image: AssetImage('assets/images/product/img.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text('Headphones',
                        style: TextStyle(fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      Text('min 50% off',
                        style: TextStyle(fontSize: 12,color: Colors.green,
                            fontWeight: FontWeight.bold),
                      ),
                      Text('Best deals',
                        style: TextStyle(fontSize: 12,color: Colors.black26),
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
                    border: Border.all(width: 2,color: Colors.white),
                    color: Colors.white,
                  ),
                  child: const Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 130,
                        child: Image(
                          image: AssetImage('assets/images/product/img.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text('Headphones',
                        style: TextStyle(fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      Text('min 50% off',
                        style: TextStyle(fontSize: 12,color: Colors.green,
                            fontWeight: FontWeight.bold),
                      ),
                      Text('Best deals',
                        style: TextStyle(fontSize: 12,color: Colors.black26),
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
                    border: Border.all(width: 2,color: Colors.white),
                    color: Colors.white,
                  ),
                  child: const Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 130,
                        child: Image(
                          image: AssetImage('assets/images/product/img.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text('Headphones',
                        style: TextStyle(fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      Text('min 50% off',
                        style: TextStyle(fontSize: 12,
                            color: Colors.green,fontWeight: FontWeight.bold),
                      ),
                      Text('Best deals',
                        style: TextStyle(fontSize: 12,color: Colors.black26),
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
                    border: Border.all(width: 2,color: Colors.white),
                    color: Colors.white,
                  ),
                  child: const Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 130,
                        child: Image(
                          image: AssetImage('assets/images/product/img.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text('Headphones',
                        style: TextStyle(fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      Text('min 50% off',
                        style: TextStyle(fontSize: 12,
                            color: Colors.green,fontWeight: FontWeight.bold),
                      ),
                      Text('Best deals',
                        style: TextStyle(fontSize: 12,color: Colors.black26),
                      ),
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
);