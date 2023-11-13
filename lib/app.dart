import 'package:circular_progress_indicator/image_with_progress.dart';
import 'package:circular_progress_indicator/shimmer_image.dart';
import 'package:circular_progress_indicator/thumbnuil_image.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  Widget _buildImageWithProgress() {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: ImageWithProgress(
        imageUrl: 'https://via.placeholder.com/300',
      ),
    );
  }

  Widget _buildShimmerImage() {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: ShimmerImage(
        imageUrl: 'https://via.placeholder.com/300',
        width: 150,
        height: 150,
        fit: BoxFit.contain,
      ),
    );
  }

  Widget _buildThumbnailImage() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Center(
        child: ThumbnailImage(
          imageUrl: 'https://via.placeholder.com/800x600',
          thumbnailWidth: 150,
          thumbnailHeight: 100,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Image Examples'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildImageWithProgress(),
            _buildShimmerImage(),
            _buildThumbnailImage(),
          ],
        ),
      ),
    );
  }
}