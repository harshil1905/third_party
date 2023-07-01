import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewFlutterDemo extends StatefulWidget {
  const WebViewFlutterDemo({super.key});

  @override
  State<WebViewFlutterDemo> createState() => _WebViewFlutterDemoState();
}

class _WebViewFlutterDemoState extends State<WebViewFlutterDemo> {
  var loadingPercentage = 0;

  late final WebViewController controller;
  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (url) {
            setState(
              () {
                loadingPercentage = 0;
              },
            );
          },
          onProgress: (progress) {
            setState(
              () {
                loadingPercentage = progress;
              },
            );
          },
          onPageFinished: (url) {
            setState(
              () {
                loadingPercentage = 100;
              },
            );
          },
        ),
      )
      ..loadRequest(
        Uri.parse('https://flutter.dev'),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        WebViewWidget(
          controller: controller,
        ),
        if (loadingPercentage < 100)
          LinearProgressIndicator(
            value: loadingPercentage / 100.0,
          ),
      ],
    );
  }
}
