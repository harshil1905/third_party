import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:third_party/sharedpreferences/counter_shared.dart';

class CircleAvatershared extends StatefulWidget {
  const CircleAvatershared({super.key});

  @override
  State<CircleAvatershared> createState() => _CircleAvatersharedState();
}

class _CircleAvatersharedState extends State<CircleAvatershared> {
  String? selectmages;
  File? file;
  Future<void> selectimage() async {
    ImagePicker picker = ImagePicker();
    XFile? xFile = await picker.pickImage(source: ImageSource.gallery);
    file = File(xFile!.path);
    SharedPref.setimage = file!.path;
    setState(() {});
  }

  @override
  void initState() {
    selectmages = SharedPref.getimage;
    if (selectmages != null) {
      file = File(selectmages!);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    selectmages = SharedPref.getimage;
    if (selectmages != null) {
      file = File(selectmages!);
    }
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                backgroundImage: file == null
                    ? const NetworkImage(
                            'https://m.media-amazon.com/images/I/71Rcb9pnbEL._AC_SY135_.jpg')
                        as ImageProvider
                    : FileImage(file!),
                maxRadius: 70,
              ),
              MaterialButton(
                onPressed: () {
                  selectimage();
                },
                color: Colors.teal,
                child: const Text('submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
