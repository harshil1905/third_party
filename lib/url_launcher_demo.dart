import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class UrlLauncherDemo extends StatefulWidget {
  const UrlLauncherDemo({Key? key}) : super(key: key);

  @override
  State<UrlLauncherDemo> createState() => _UrlLauncherDemoState();
}

class _UrlLauncherDemoState extends State<UrlLauncherDemo> {
  String monNo = "+919913399028";
  String gmail = "harshilkoladiya3062@gmail.com";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () {
                  launchUrlString('sms:$monNo');
                },
                child: const Text("Open SMS")),
            ElevatedButton(
                onPressed: () {
                  launchUrlString('https://www.youtube.com/');
                  // launchUrl('https://www.youtube.com/' as Uri);
                },
                child: const Text("Open YouTube")),
            ElevatedButton(
                onPressed: () {
                  launchUrlString('tel:$monNo');
                  //launchUrl('tel : $monNo' as Uri);
                },
                child: const Text("Open TEL"))
          ],
        ),
      ),
    );
  }
}
