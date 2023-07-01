import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselSliderDemo extends StatefulWidget {
  const CarouselSliderDemo({super.key});

  @override
  State<CarouselSliderDemo> createState() => _CarouselSliderDemoState();
}

class _CarouselSliderDemoState extends State<CarouselSliderDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: CarouselSlider(
        options: CarouselOptions(height: 400),
        items: [1, 2, 3, 4, 5].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: const BoxDecoration(color: Colors.amber),
                  child: Center(
                    child: Text(
                      'text $i',
                      style: const TextStyle(fontSize: 16.0),
                    ),
                  ));
            },
          );
        }).toList(),
      ),
    ));
  }
}
