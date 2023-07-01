import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImafepikerDemo extends StatefulWidget {
  const ImafepikerDemo({super.key});

  @override
  State<ImafepikerDemo> createState() => _ImafepikerDemoState();
}

class _ImafepikerDemoState extends State<ImafepikerDemo> {
  File? file;
  void picImageFromGallery() async {
    ImagePicker picker = ImagePicker();
    XFile? xFile = await picker.pickImage(source: ImageSource.gallery);
    file = File(xFile!.path);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                backgroundImage: file == null
                    ? const NetworkImage(
                        'mediahttps://m.-amazon.com/images/I/71Rcb9pnbEL._AC_SY135_.jpg',
                      ) as ImageProvider
                    : FileImage(file!),
                radius: 70,
              ),
              const SizedBox(
                height: 20,
              ),
              MaterialButton(
                color: Colors.teal.shade200,
                onPressed: () {
                  picImageFromGallery();
                },
                child: const Text('select images'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
