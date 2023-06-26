import 'package:flipkart_home/screens/account_screen.dart';
import 'package:flipkart_home/screens/categories_screen.dart';
import 'package:flipkart_home/screens/notification_screen.dart';
import 'package:flipkart_home/screens/shoping-cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:flipkart_home/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int selectedIndex = 0;
  List<Widget> pages = [
    Homepage(),
    CategoryScreen(),
    NotificationScreen(),
    AccountScreen(),
    ShoppingCartScreen()
  ];
  PageController _pageController = PageController(initialPage: 0);

  void _onTabSelected(int index) {
    setState(() {
      selectedIndex = index;
      _pageController.animateToPage(
        index,
        duration: Duration(milliseconds: 300),
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
      title: 'Flutter Demo',
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
          children: [
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
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined,color: Colors.black12,),
              label: 'Home'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.category_outlined,color: Colors.black12,),
                label: 'Categories'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_none_outlined,color: Colors.black12,),
                label: 'Notifications'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined,color: Colors.black12,),
                label: 'Account'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_sharp,color: Colors.black12,),
                label: 'Cart'
            ),
          ],
          selectedLabelStyle: TextStyle(color: Colors.blue), // Custom selected label color
          unselectedLabelStyle: TextStyle(color: Colors.black),
        ),
      )
    );
  }
}

