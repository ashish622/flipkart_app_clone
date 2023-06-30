import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String vtext = " ";
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        bottomOpacity: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage('assets/images/icons/img_3.png',),width: 30,height: 20,)
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: double.infinity,
              height: 190,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(18, 18, 18, 2),
                    child: Text('Log in for the best experience',
                      style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(18, 8, 18, 20),
                    child: Text(
                      style: TextStyle(fontSize: 12,color: Colors.black),
                      'Enter your phone number to continue',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Stack(

                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width*0.8,
                          height: 45,
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.blue,
                                width: 1,
                              ),
                                right: BorderSide(
                                  color: Colors.blue,
                                  width: 1,
                                ),
                                left: BorderSide(
                                  color: Colors.blue,
                                  width: 1,
                                  style: BorderStyle.solid
                                ),
                            ),
                            // borderRadius: BorderRadius.only(
                            //   bottomLeft: Radius.circular(10),
                            //   bottomRight: Radius.circular(10),
                            //   topRight: Radius.circular(10),
                            //   topLeft: Radius.circular(10),
                            // )
                          ),
                          child: TextFormField(
                            controller: _controller,
                            onChanged: (controller){
                              vtext = _controller.text;
                            },
                            decoration: const InputDecoration(
                              prefix: Text('+91-'),
                              border: InputBorder.none,
                            ),
                            keyboardType: const TextInputType.numberWithOptions(),
                          ),
                        ),
                        const Positioned(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 4, 0),
                            child: Row(
                              children: [
                                Text('Phone number',
                                  style: TextStyle(color: Colors.blue,fontSize: 10),
                                ),
                                Divider(
                                  color: Colors.blue,
                                  thickness: 2,
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 30, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Use E-mail',style: TextStyle(fontSize: 14,color: Colors.blue),)
                      ],
                    ),
                  )
                ],
              ),
            ),
            InkWell(
              child: Container(
                width: MediaQuery.of(context).size.width*0.9,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: vtext.length==10?Colors.blue:Colors.grey,
                ),
                child: const Center(child: Text('Continue')),
              ),
              onTap: (){
                vtext.length==10?Navigator.pushReplacementNamed(context, 'continue')
                :const LoginScreen();
              },
            )
          ],
        ),
      ),
    );
  }
}
