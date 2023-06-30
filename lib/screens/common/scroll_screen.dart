import "package:carousel_slider/carousel_slider.dart";
import "package:flutter/material.dart";

class ScrollScreen extends StatelessWidget {
  final List<String> images;
  ScrollScreen({ required this.images});

  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    dispose();
  }
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          enableInfiniteScroll: true,
          viewportFraction: 1
      ),
      itemCount: images.length,
      itemBuilder: (BuildContext context, int index, int realIndex) {
        return Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(images[index]),fit: BoxFit.cover)
          ),
        );
      },

    );
  }
}
