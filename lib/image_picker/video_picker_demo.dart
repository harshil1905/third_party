import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

class VideoPickerDemo extends StatefulWidget {
  const VideoPickerDemo({super.key});

  @override
  State<VideoPickerDemo> createState() => _VideoPickerDemoState();
}

class _VideoPickerDemoState extends State<VideoPickerDemo> {
  late VideoPlayerController controller;

  @override
  void initState() {
    initializedVideo();
    super.initState();
  }

  void initializedVideo() {
    if (file == null) {
      controller = VideoPlayerController.network(
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
        ..initialize().then((value) {
          setState(() {});
        });
    } else {
      controller = VideoPlayerController.file(file!)
        ..initialize().then((value) {
          setState(() {});
        });
    }
  }

  File? file;
  Future<void> pickVideo() async {
    ImagePicker videoPicker = ImagePicker();
    XFile? xFile = await videoPicker.pickVideo(source: ImageSource.gallery);
    file = File(xFile!.path);
    initializedVideo();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              controller.value.isPlaying
                  ? controller.pause()
                  : controller.play();
            });
          },
          child: Icon(
            controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          ),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              MaterialButton(
                color: Colors.purple,
                onPressed: () {
                  pickVideo();
                },
                child: const Text('Select Video'),
              ),
              const SizedBox(
                height: 20,
              ),
              controller.value.isInitialized
                  ? AspectRatio(
                      aspectRatio: controller.value.aspectRatio,
                      child: VideoPlayer(controller),
                    )
                  : Container(),
              // Text(file.toString()),
              // const SizedBox(height: 40),
              // Padding(
              //   padding: const EdgeInsets.only(left: 300, top: 600),
              //   child: FloatingActionButton(
              //       backgroundColor: Colors.blue,
              //       onPressed: () {
              //         pickVideo();
              //       },
              //       child: const Icon(
              //         Icons.play_arrow,
              //         color: Colors.white,
              //         size: 35,
              //       )),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
