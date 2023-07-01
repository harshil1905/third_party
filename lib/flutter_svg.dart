
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FlutterSvgDemo extends StatefulWidget {
  const FlutterSvgDemo({super.key});

  @override
  State<FlutterSvgDemo> createState() => _FlutterSvgDemoState();
}

class _FlutterSvgDemoState extends State<FlutterSvgDemo> {
  List painters = [
    'assets/photo-svgrepo-com.svg',
    'assets/photo-svgrepo-com.svg',
    'assets/photo-svgrepo-com.svg',
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
                child: GridView.builder(
              itemCount: painters.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width * 0.4,
                  color: Colors.teal,
                  child: SvgPicture.asset(painters[index].toString()),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
