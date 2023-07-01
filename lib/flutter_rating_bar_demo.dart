import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FlutterRatingBarDemo extends StatefulWidget {
  const FlutterRatingBarDemo({super.key});

  @override
  State<FlutterRatingBarDemo> createState() => _FlutterRatingBarDemoState();
}

class _FlutterRatingBarDemoState extends State<FlutterRatingBarDemo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RatingBar.builder(
              initialRating: 3,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemBuilder: (context, index) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (value) {
                print(value);
              },
            ),
          ],
        ),
      ),
    );
  }
}
