import 'package:flipkart_home/screens/account_screen.dart';
import 'package:flipkart_home/screens/categories_screen.dart';
import 'package:flipkart_home/screens/notification_screen.dart';
import 'package:flipkart_home/screens/shoping-cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:flipkart_home/screens/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final CollectionReference _products =
  FirebaseFirestore.instance.collection('products');
  int selectedIndex = 0;
  int ref = 0;
  List<Widget> pages = [
    const Homepage(),
    const CategoryScreen(),
    const NotificationScreen(),
    const AccountScreen(),
    const ShoppingCartScreen()
  ];
  final PageController _pageController = PageController(initialPage: 0);

  void _onTabSelected(int index) {
    setState(() {
      selectedIndex = index;
      _pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flipkart Home Screen',
      routes: {
        'continue': (context) => const Homepage(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          children: const [
            Homepage(),
            CategoryScreen(),
            NotificationScreen(),
            AccountScreen(),
            ShoppingCartScreen()
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: _onTabSelected,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black,
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined,color: selectedIndex==0?Colors.blue:Colors.black,),
              label: 'Home'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.category_outlined,color: selectedIndex==1?Colors.blue:Colors.black,),
                label: 'Categories'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_none_outlined,color: selectedIndex==2?Colors.blue:Colors.black,),
                label: 'Notifications'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined,color: selectedIndex==3?Colors.blue:Colors.black,),
                label: 'Account'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_sharp,color: selectedIndex==4?Colors.blue:Colors.black,),
                label: 'Cart',
            ),
          ],
        ),
      )
      // : const LoginScreen()
    );
  }
}

