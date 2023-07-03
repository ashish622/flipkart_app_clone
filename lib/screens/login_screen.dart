import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20,),
            const CircleAvatar(
              radius: 20,
              child: Image(image: AssetImage('assets/images/logos/logo.png'),
                fit: BoxFit.cover,
              ),
            ),
            const Text('Welcome Back!',
              style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black),
              textAlign: TextAlign.center,
            ),
            const Text('Login here to get more of our service',
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30,),
            Container(
              width: MediaQuery.of(context).size.width*0.7,
              height: 350,
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.black),
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 18,),
                  const Text('Login',
                    style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.black),
                  ),
                  const SizedBox(height: 38,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('E-mail'),
                      const SizedBox(height: 10,),
                      Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width*0.6,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(width: 1, color: Colors.blue)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: TextFormField(
                            controller: _emailController,
                            decoration: const InputDecoration(
                              hintText: 'E-mail',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('password'),
                      const SizedBox(height: 10,),
                      Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width*0.6,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(width: 1, color: Colors.blue)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: TextFormField(
                            controller: _passController,
                            obscureText: true,
                            decoration: const InputDecoration(
                              hintText: 'Password',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 28,),
                  ElevatedButton(
                    onPressed: (){

                    },
                    child: const Text('Login'),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
