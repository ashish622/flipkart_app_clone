import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ToggleScreen1 extends StatefulWidget {
  const ToggleScreen1({Key? key}) : super(key: key);

  @override
  State<ToggleScreen1> createState() => _ToggleScreen1State();
}

class _ToggleScreen1State extends State<ToggleScreen1> {
  var val = false;
  final List<String> _images = [
    'assets/images/product/img_7.png',
    'assets/images/product/img_2.png',
    'assets/images/product/img_4.png'
    // Add more image paths as needed
  ];
  PageController _pageController = PageController();
  int _currentPage = 0;
  void _startAutoScroll() {
    Future.delayed(Duration(seconds: 3)).then((_) {
      if (_currentPage < _images.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
      _startAutoScroll();
    });

  }

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: double.infinity,
            height: 80,
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Brand Mall',style: TextStyle(fontSize: 10),),
                    Switch(value: val, onChanged: (bool value){
                      setState(() {
                        val = value;
                      });
                    }),
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width*0.75,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: Colors.black12),
                      color: Colors.white24
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: 'search for products',
                        disabledBorder: InputBorder.none,
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search_outlined,color: Colors.black12,size: 20,),
                        suffixIcon: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                                onPressed: (){},
                                icon: Icon(Icons.mic_none_rounded,color: Colors.black12,size: 20,),
                            ),
                            IconButton(
                                onPressed: (){},
                                icon: Icon(Icons.camera_alt,color: Colors.black12,size: 20,),
                            )
                          ],
                        )
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: CarouselSlider.builder(
                options: CarouselOptions(
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    enableInfiniteScroll: true,
                    viewportFraction: 1
                ),
                itemCount: _images.length,
                itemBuilder: (BuildContext context, int index, int realIndex) {
                  return Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(_images[index]),fit: BoxFit.cover)
                    ),
                  );
                },

              )
          ),
          Container(
            height: 90,
            padding: EdgeInsets.all(10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.blueGrey,
                          child: Icon(Icons.currency_rupee,color: Colors.greenAccent,size: 16,),
                        ),
                        Text('Supercoins')
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.blueGrey,
                          child: Icon(Icons.currency_rupee,color: Colors.greenAccent,size: 16,),
                        ),
                        Text('Supercoins')
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.blueGrey,
                          child: Icon(Icons.currency_rupee,color: Colors.greenAccent,size: 16,),
                        ),
                        Text('Supercoins')
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.blueGrey,
                          child: Icon(Icons.currency_rupee,color: Colors.greenAccent,size: 16,),
                        ),
                        Text('Supercoins')
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.blueGrey,
                          child: Icon(Icons.currency_rupee,color: Colors.greenAccent,size: 16,),
                        ),
                        Text('Supercoins')
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.blueGrey,
                          child: Icon(Icons.currency_rupee,color: Colors.greenAccent,size: 16,),
                        ),
                        Text('Supercoins')
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.blueGrey,
                          child: Icon(Icons.currency_rupee,color: Colors.greenAccent,size: 16,),
                        ),
                        Text('Supercoins')
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.blueGrey,
                          child: Icon(Icons.currency_rupee,color: Colors.greenAccent,size: 16,),
                        ),
                        Text('Supercoins')
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.blueGrey,
                          child: Icon(Icons.currency_rupee,color: Colors.greenAccent,size: 16,),
                        ),
                        Text('Supercoins')
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){},
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.30,
                    height: 100,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1,color: Colors.black12)
                    ),
                    child: Column(
                      children: const [
                        SizedBox(
                          width: double.infinity,
                          height: 70,
                          child: Image(image: AssetImage('assets/images/product/img_4.png'),fit: BoxFit.cover,),
                        ),
                        Text('Handpicked Deals',style: TextStyle(fontSize: 10,),),
                        Text('Just For You',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.30,
                    height: 100,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1,color: Colors.black12)
                    ),
                    child: Column(
                      children: const [
                        SizedBox(
                          width: double.infinity,
                          height: 70,
                          child: Image(image: AssetImage('assets/images/product/img_4.png'),fit: BoxFit.cover,),
                        ),
                        Text('Handpicked Deals',style: TextStyle(fontSize: 10,),),
                        Text('Just For You',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.30,
                    height: 100,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1,color: Colors.black12)
                    ),
                    child: Column(
                      children: const [
                        SizedBox(
                          width: double.infinity,
                          height: 70,
                          child: Image(image: AssetImage('assets/images/product/img_4.png'),fit: BoxFit.cover,),
                        ),
                        Text('Handpicked Deals',style: TextStyle(fontSize: 10,),),
                        Text('Just For You',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 450,
            decoration: BoxDecoration(
              color: Colors.cyanAccent
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Discount for you',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.black),),
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.purple
                        ),
                        child: const Center(
                          child: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 14,),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 390,
                    width: double.infinity,
                    child: GridView.count(
                      primary: false,
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2,
                      children: <Widget>[
                        Container(
                            height: 40,
                            width: 50,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Colors.white
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image(image: AssetImage('assets/images/img_2.png'),),
                                Text('Electronic Gadgets'),
                                Text('Upto 10% off',style: TextStyle(color: Colors.green),),
                              ],
                            )
                        ),
                        Container(
                          height: 40,
                          width: 50,
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image(image: AssetImage('assets/images/img_4.png'),),
                              Text('Clothing'),
                              Text('Under ₹599',style: TextStyle(color: Colors.green),)

                            ],
                          )
                        ),
                        Container(
                            height: 40,
                            width: 50,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Colors.white
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image(image: AssetImage('assets/images/img_5.png'),),
                                Text('Women\'s Clothing'),
                                Text('Latest Design & trends',style: TextStyle(color: Colors.green),),

                              ],
                            )
                        ),
                        Container(
                            height: 40,
                            width: 50,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Colors.white
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image(image: AssetImage('assets/images/img_6.png')),
                                Text('Aplianes'),
                                Text('Great deals on aplianes',style: TextStyle(color: Colors.green),),
                              ],
                            )
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          const Padding(
            padding:  EdgeInsets.fromLTRB(10, 20, 10, 10),
            child:  Text(
              'Sponsered Products',
              style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.white,
                border: Border(
                  bottom: BorderSide(
                      color: Colors.black,
                      width: 1.0
                  ),
                )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){},
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.30,
                    height: 160,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1,color: Colors.black12)
                    ),
                    child: Column(
                      children: const [
                        SizedBox(
                          width: double.infinity,
                          height: 120,
                          child: Image(image: AssetImage('assets/images/product/img.png'),fit: BoxFit.cover,),
                        ),
                        Text('Headphones',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                        Text('min 50% off',style: TextStyle(fontSize: 10,color: Colors.green,fontWeight: FontWeight.bold),),
                        Text('Best deals',style: TextStyle(fontSize: 10,color: Colors.black26),),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.30,
                    height: 160,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1,color: Colors.black12)
                    ),
                    child: Column(
                      children: const [
                        SizedBox(
                          width: double.infinity,
                          height: 120,
                          child: Image(image: AssetImage('assets/images/product/img_1.png'),fit: BoxFit.cover,),
                        ),
                        Text('Paintings',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                        Text('Upto 60% off',style: TextStyle(fontSize: 10,color: Colors.green,fontWeight: FontWeight.bold),),
                        Text('Big Discounts',style: TextStyle(fontSize: 10,color: Colors.black26),),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.30,
                    height: 160,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1,color: Colors.black12)
                    ),
                    child: Column(
                      children: const [
                        SizedBox(
                          width: double.infinity,
                          height: 120,
                          child: Image(image: AssetImage('assets/images/product/img_3.png'),fit: BoxFit.cover,),
                        ),
                        Text('Artificial Plants',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                        Text('Upto 80% off',style: TextStyle(fontSize: 10,color: Colors.green,fontWeight: FontWeight.bold),),
                        Text('Big discounts',style: TextStyle(fontSize: 10,color: Colors.black26),),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black,
                    width: 1.0
                  ),
                )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){},
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.30,
                    height: 160,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1,color: Colors.black12)
                    ),
                    child: Column(
                      children: const [
                        SizedBox(
                          width: double.infinity,
                          height: 120,
                          child: Image(image: AssetImage('assets/images/product/img.png'),fit: BoxFit.cover,),
                        ),
                        Text('Headphones',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                        Text('min 50% off',style: TextStyle(fontSize: 10,color: Colors.green,fontWeight: FontWeight.bold),),
                        Text('Best deals',style: TextStyle(fontSize: 10,color: Colors.black26),),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.30,
                    height: 160,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1,color: Colors.black12)
                    ),
                    child: Column(
                      children: const [
                        SizedBox(
                          width: double.infinity,
                          height: 120,
                          child: Image(image: AssetImage('assets/images/product/img_1.png'),fit: BoxFit.cover,),
                        ),
                        Text('Paintings',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                        Text('Upto 60% off',style: TextStyle(fontSize: 10,color: Colors.green,fontWeight: FontWeight.bold),),
                        Text('Big Discounts',style: TextStyle(fontSize: 10,color: Colors.black26),),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.30,
                    height: 160,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1,color: Colors.black12)
                    ),
                    child: Column(
                      children: const [
                        SizedBox(
                          width: double.infinity,
                          height: 120,
                          child: Image(image: AssetImage('assets/images/product/img_3.png'),fit: BoxFit.cover,),
                        ),
                        Text('Artificial Plants',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                        Text('Upto 80% off',style: TextStyle(fontSize: 10,color: Colors.green,fontWeight: FontWeight.bold),),
                        Text('Big discounts',style: TextStyle(fontSize: 10,color: Colors.black26),),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
