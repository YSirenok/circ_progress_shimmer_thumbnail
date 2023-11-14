import 'package:circular_progress_indicator/cashed_img.dart';
import 'package:circular_progress_indicator/image_with_progress.dart';
import 'package:circular_progress_indicator/shimmer_image.dart';
import 'package:circular_progress_indicator/thumbnail_image.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget _buildCachedNetworkImage() {
    return const Padding(
      padding: EdgeInsets.only(top: 16.0),
      child: CachedNetworkImg(
        imageUrl: 'https://picsum.photos/200/300?grayscale',
        width: 300,
        height: 200,
      ),
    );
  }

  Widget _buildThumbnailImage() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 24.0),
      child: Center(
        child: ThumbnailImage(
          imageUrl: 'https://via.placeholder.com/800x600',
          thumbnailWidth: 150,
          thumbnailHeight: 60,
        ),
      ),
    );
  }

  Widget _buildImageWithProgress() {
    return const Padding(
      padding: EdgeInsets.only(top: 16.0),
      child: ImageWithProgress(
        imageUrl: 'https://via.placeholder.com/300',
      ),
    );
  }

  Widget _buildShimmerImage() {
    return const Padding(
      padding: EdgeInsets.only(top: 16.0),
      child: ShimmerImage(
        imageUrl: 'https://via.placeholder.com/300',
        width: 300,
        height: 70,
        fit: BoxFit.contain,
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
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildThumbnailImage(),
              _buildShimmerImage(),
              _buildCachedNetworkImage(),
              _buildImageWithProgress()
            ],
          ),
        ),
      ),
    );
  }
}
