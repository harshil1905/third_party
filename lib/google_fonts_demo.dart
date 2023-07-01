import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class GooGlefontsDemo extends StatefulWidget {
  const GooGlefontsDemo({super.key});

  @override
  State<GooGlefontsDemo> createState() => _GooGlefontsDemoState();
}

class _GooGlefontsDemoState extends State<GooGlefontsDemo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'You have pushed the button this many times:',
                style: GoogleFonts.abel(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
