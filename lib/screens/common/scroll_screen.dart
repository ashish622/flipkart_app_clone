import "dart:async";
import "package:flutter/material.dart";

class ScrollScreen extends StatefulWidget {
  final List<String> images;

  ScrollScreen({ required this.images});

  @override
  State<ScrollScreen> createState() => _ScrollScreenState();
}

class _ScrollScreenState extends State<ScrollScreen> {
  var currentIndex = 0;
  late Timer _timer;
  final PageController _pageController = PageController(
    initialPage: 0,
  );
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (_currentPage < widget.images.length) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 180,
          width: double.infinity,
          child: PageView.builder(
            itemCount: widget.images.length,
            controller: _pageController,
            onPageChanged: (index){
              setState(() {
                currentIndex = index;
              });
            },
            itemBuilder: (context, index){
              return SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: Image(image: AssetImage(widget.images[index]),fit: BoxFit.fill,),
              );
            },
          ),
        ),
        const SizedBox(height: 7,),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: indicators(widget.images.length,currentIndex))
      ]
    );
  }
}
List<Widget> indicators(imagesLength,currentIndex) {
  return List<Widget>.generate(imagesLength, (index) {
    return Container(
      margin: const EdgeInsets.all(3),
      width: 30,
      height: 6,
      decoration: BoxDecoration(
          color: currentIndex == index ? Colors.greenAccent : Colors.black26,
          borderRadius: BorderRadius.circular(20)
      ),
    );
  });
}
