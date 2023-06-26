import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ToggleScreen1 extends StatefulWidget {
  const ToggleScreen1({Key? key}) : super(key: key);

  @override
  State<ToggleScreen1> createState() => _ToggleScreen1State();
}

class _ToggleScreen1State extends State<ToggleScreen1> {
  var val = false;
  List<String> _images = [
    'assets/images/img_5.png',
    'assets/images/img_2.png',
    'assets/images/img_6.png',
    'assets/images/img_4.png'
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
                    decoration: const InputDecoration(
                        labelText: 'search for products',
                        disabledBorder: InputBorder.none,
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search_outlined,color: Colors.black12,size: 20,),
                        suffixIcon: Icon(Icons.mic_none_rounded,color: Colors.black12,size: 20,),
                        suffix: Icon(Icons.camera_alt,color: Colors.black12,size: 20,)
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
            height: 80,
            padding: EdgeInsets.all(10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: const [
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.white10,
                          child: Icon(Icons.currency_rupee),
                        ),
                        Text('Supercoins')
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: const [
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.white10,
                          child: Icon(Icons.branding_watermark),
                        ),
                        Text('NextGen Brands')
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: const [
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.white10,
                          child: Icon(Icons.credit_card),
                        ),
                        Text('credit')
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: const [
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.white10,
                          child: Icon(Icons.live_tv),
                        ),
                        Text('LiveShop+')
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: const [
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.white10,
                          child: Icon(Icons.price_change_outlined),
                        ),
                        Text('EMI')
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: const [
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.white10,
                          child: Icon(Icons.cast_for_education),
                        ),
                        Text('Students club')
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: const [
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.white10,
                          child: Icon(Icons.cast_for_education),
                        ),
                        Text('Students club')
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: const [
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.white10,
                          child: Icon(Icons.cast_for_education),
                        ),
                        Text('Students club')
                      ],
                    ),
                  )
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
                Container(
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
                        child: Image(image: AssetImage('assets/images/img_4.png'),fit: BoxFit.cover,),
                      ),
                      Text('Handpicked Deals',style: TextStyle(fontSize: 10,),),
                      Text('Just For You',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
                Container(
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
                        child: Image(image: AssetImage('assets/images/img_4.png'),fit: BoxFit.cover,),
                      ),
                      Text('Handpicked Deals',style: TextStyle(fontSize: 10,),),
                      Text('Just For You',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
                Container(
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
                        child: Image(image: AssetImage('assets/images/img_4.png'),fit: BoxFit.cover,),
                      ),
                      Text('Handpicked Deals',style: TextStyle(fontSize: 10,),),
                      Text('Just For You',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.lightBlue
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Discount for you',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.black),),
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.deepPurple,
                        child: Center(
                            child: IconButton(
                              icon: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 12,),
                              onPressed: () {  },
                            )
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
