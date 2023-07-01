import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class FlutterSlidableDemo extends StatefulWidget {
  const FlutterSlidableDemo({super.key});

  @override
  State<FlutterSlidableDemo> createState() => _FlutterSlidableDemoState();
}

class _FlutterSlidableDemoState extends State<FlutterSlidableDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Slidable(
            key: const ValueKey(0),
            startActionPane: ActionPane(
              motion: const ScrollMotion(),
              dismissible: DismissiblePane(onDismissed: () {}),
              children: const [
                SlidableAction(
                  onPressed: doNothing,
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  icon: Icons.delete,
                  label: 'Delete',
                ),
                SlidableAction(
                  onPressed: doNothing,
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                  icon: Icons.share,
                  label: 'Share',
                ),
              ],
            ),
            endActionPane: const ActionPane(
              motion: ScrollMotion(),
              children: [
                SlidableAction(
                  flex: 2,
                  onPressed: doNothing,
                  backgroundColor: Colors.orangeAccent,
                  foregroundColor: Colors.white,
                  icon: Icons.archive,
                  label: 'Archive',
                ),
                SlidableAction(
                  onPressed: doNothing,
                  backgroundColor: Colors.lightBlue,
                  foregroundColor: Colors.white,
                  icon: Icons.save,
                  label: 'Save',
                ),
              ],
            ),
            child: const ListTile(title: Text('Slide me')),
          ),
        ],
      ),
    );
  }
}

void doNothing(BuildContext context) {}
