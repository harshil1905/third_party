import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerItem extends StatefulWidget {
  const ImagePickerItem({super.key});

  @override
  State<ImagePickerItem> createState() => _ImagePickerItemState();
}

class _ImagePickerItemState extends State<ImagePickerItem> {
  List<File> files = [];
  Future<void> picmulteiimageformgallery() async {
    ImagePicker muitimage = ImagePicker();
    List<XFile> xFiles = await muitimage.pickMultiImage();
    for (var xFile in xFiles) {
      files.add(File(xFile.path));
    }
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
              files.isEmpty
                  ? const Text('please select iamge')
                  : Expanded(
                      child: GridView.builder(
                        itemCount: files.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3),
                        itemBuilder: (context, index) => CircleAvatar(
                          radius: 50,
                          backgroundImage: FileImage(files[index]),
                        ),
                      ),
                    ),
              MaterialButton(
                onPressed: () {
                  picmulteiimageformgallery();
                },
                color: Colors.teal.shade100,
                child: const Text('multi image picker'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
