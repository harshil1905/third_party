import 'package:flutter/material.dart';
import 'package:third_party/sharedpreferences/counter_shared.dart';

class SaredPreferences extends StatefulWidget {
  const SaredPreferences({super.key});

  @override
  State<SaredPreferences> createState() => _SaredPreferencesState();
}

class _SaredPreferencesState extends State<SaredPreferences> {
  int counter = 0;
  void incrementcounter() {
    setState(() {
      counter++;
    });
  }

  @override
  void initState() {
    counter = SharedPref.getCounter;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              incrementcounter();

              setState(() {
                SharedPref.setCounter = ++counter;
              });
            },
            child: const Icon(Icons.add),
          ),
          body: Center(
            child: Center(
              child: Text(SharedPref.getCounter.toString(),
                  style: const TextStyle(fontSize: 220)),
            ),
          )),
    );
  }
}
