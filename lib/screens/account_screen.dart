import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Hey! ABC',
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),
            ),
            Container(
              width: 40,
              height: 25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(width: 0.8, color: Colors.black26)
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(image: AssetImage('assets/images/icons/img.png'),width: 10,height: 10,),
                  Text('64',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.black),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      body: Container(
        color: Colors.black12.withOpacity(0.05),
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 100,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 140,
                          height: 40,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.black12),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: const Row(
                            children: [
                              Icon(Icons.production_quantity_limits,color: Colors.blue,),
                              Text('Orders',
                                style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 140,
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.black12),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: const Row(
                            children: [
                              Icon(Icons.production_quantity_limits,color: Colors.blue,),
                              Text('Orders',
                                style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 140,
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.black12),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: const Row(
                            children: [
                              Icon(Icons.production_quantity_limits,color: Colors.blue,),
                              Text('Orders',
                                style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 140,
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.black12),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: const Row(
                            children: [
                              Icon(Icons.production_quantity_limits,color: Colors.blue,),
                              Text('Orders',
                                style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: Container(
                  color: Colors.white,
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.mail, color: Colors.yellow,size: 32,),
                          Text('Please Add/Verify your mail',
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
                          ),
                        ],
                      ),
                      ElevatedButton(onPressed: (){}, child: const Text('update'))
                    ],
                  ),
                ),
              ),
              Container(
                height: 60,
                color: Colors.white,
                child: const Row(
                  children: [
                    Icon(Icons.currency_rupee_outlined,color: Colors.blue,)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}