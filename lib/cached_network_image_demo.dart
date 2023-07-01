import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CachedNetworkImageDemo extends StatefulWidget {
  const CachedNetworkImageDemo({super.key});

  @override
  State<CachedNetworkImageDemo> createState() => _CachedNetworkImageDemoState();
}

class _CachedNetworkImageDemoState extends State<CachedNetworkImageDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                CachedNetworkImage(
                  imageUrl:
                      'https://images.unsplash.com/photo-1532264523420-881a47db012d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9',
                  height: 100,
                  width: 100,
                  imageBuilder: (context, imageProvider) => Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.contain,
                        colorFilter: const ColorFilter.mode(
                            Colors.red, BlendMode.colorBurn),
                      ),
                    ),
                  ),
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(
                    strokeWidth: 10,
                    color: Colors.amber,
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
                CachedNetworkImage(
                  imageUrl:
                      'https://images.unsplash.com/photo-1532264523420-881a47db012d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9',
                  height: 100,
                  width: 100,
                  imageBuilder: (context, imageProvider) => Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.contain,
                        colorFilter: const ColorFilter.mode(
                            Colors.red, BlendMode.colorBurn),
                      ),
                    ),
                  ),
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(
                    strokeWidth: 10,
                    color: Colors.amber,
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
