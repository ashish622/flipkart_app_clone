import 'package:flipkart_home/screens/login_screen.dart';
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
                              Icon(Icons.check_circle_outline_sharp,color: Colors.blue,),
                              Text('Wishlist',
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
                              Text('Coupons',
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
                              Icon(Icons.headset_mic_outlined,color: Colors.blue,),
                              Text('Help center',
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
                  padding: const EdgeInsets.fromLTRB(14, 0, 14, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.mail, color: Colors.yellow,size: 32,),
                          SizedBox(width: 10,),
                          Text('Please Add/Verify your mail',
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),
                          ),
                        ],
                      ),
                      ElevatedButton(onPressed: (){}, child: const Text('update'))
                    ],
                  ),
                ),
              ),

              // Credit Option
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 0, 4),
                child: Container(
                  height: 120,
                  width: double.infinity,
                  color: Colors.white,
                  padding: const EdgeInsets.all(8),
                  child: const Column(
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Credit Options',
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.payments_outlined,color: Colors.blue,),
                                SizedBox(width: 15,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('FlipKart Pay later',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    Text('Available Balance: 6000 rs. Buy now',
                                      style: TextStyle(fontSize: 9),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios,size: 10,)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Account Settings
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 0, 4),
                child: Container(
                  height: 300,
                  width: double.infinity,
                  color: Colors.white,
                  padding: const EdgeInsets.all(8),
                  child: const Column(
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Account Settings',
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.star_border,color: Colors.blue,),
                                SizedBox(width: 15,),
                                Text('Flipkart Plus')
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios,size: 10,)
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.account_circle_outlined,color: Colors.blue,),
                                SizedBox(width: 15,),
                                Text('Edit Profile')
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios,size: 10,)
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.credit_card,color: Colors.blue,),
                                SizedBox(width: 15,),
                                Text('Saved cards and wallets')
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios,size: 10,)
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.pin_drop_outlined,color: Colors.blue,),
                                SizedBox(width: 15,),
                                Text('Saved Addresses')
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios,size: 10,)
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.language_outlined,color: Colors.blue,),
                                SizedBox(width: 15,),
                                Text('Select Language')
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios,size: 10,)
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.edit_notifications_outlined,color: Colors.blue,),
                                SizedBox(width: 15,),
                                Text('Notifications Settings')
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios,size: 10,)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Your Activity
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 0, 4),
                child: Container(
                  height: 120,
                  width: double.infinity,
                  color: Colors.white,
                  padding: const EdgeInsets.all(8),
                  child: const Column(
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Your Activity',
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.note_alt_outlined,color: Colors.blue,),
                                SizedBox(width: 15,),
                                Text('Reviews')
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios,size: 10,)
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.question_answer_outlined,color: Colors.blue,),
                                SizedBox(width: 15,),
                                Text('Questions and Answers')
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios,size: 10,)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Earn With Flipkart
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 0, 4),
                child: Container(
                  height: 120,
                  width: double.infinity,
                  color: Colors.white,
                  padding: const EdgeInsets.all(8),
                  child: const Column(
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Earn With Flipkart',
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.star_border_purple500,color: Colors.blue,),
                                SizedBox(width: 15,),
                                Text('FLipkart Creator Studio')
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios,size: 10,)
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.sell_outlined,color: Colors.blue,),
                                SizedBox(width: 15,),
                                Text('Be a Seller')
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios,size: 10,)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Feedback and Information
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 0, 4),
                child: Container(
                  height: 120,
                  width: double.infinity,
                  color: Colors.white,
                  padding: const EdgeInsets.all(8),
                  child: const Column(
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Feedback and Information',
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.note_rounded,color: Colors.blue,),
                                SizedBox(width: 15,),
                                Text('Terms, policies and licenses')
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios,size: 10,)
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.question_mark_rounded,color: Colors.blue,),
                                SizedBox(width: 15,),
                                Text('Brows FAQ\'s')
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios,size: 10,)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // LogOut
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.white,
                  width: double.infinity,
                  height: 30,
                  child: TextButton(
                    onPressed: (){
                      Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) =>  LoginScreen()),
                      );
                    },
                    child: const Text('Log Out',style: TextStyle(color: Colors.blue),),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}