import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ConvexBottomBarDemo extends StatefulWidget {
  const ConvexBottomBarDemo({super.key});

  @override
  State<ConvexBottomBarDemo> createState() => _ConvexBottomBarDemoState();
}

class _ConvexBottomBarDemoState extends State<ConvexBottomBarDemo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: TextButton(
            onPressed: () => Navigator.of(context).pushNamed('/bar'),
            child: const Text('Click to show full example'),
          ),
        ),
        bottomNavigationBar: ConvexAppBar(
          backgroundColor: Colors.teal,
          style: TabStyle.react,
          color: Colors.black,
          activeColor: Colors.white,
          shadowColor: Colors.teal,
          items: const [
            TabItem(icon: Icons.list),
            TabItem(icon: Icons.calendar_today),
            TabItem(icon: Icons.assessment),
            TabItem(icon: Icons.assessment),
          ],
          // initialActiveIndex: 1,
          // onTap: (int i) => print('click index=$i'),
        ),
      ),
    );
  }
}
