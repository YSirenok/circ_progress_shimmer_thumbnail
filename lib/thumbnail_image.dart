import 'package:flutter/material.dart';

class ThumbnailImage extends StatelessWidget {
  final String imageUrl;
  final double thumbnailWidth;
  final double thumbnailHeight;

  const ThumbnailImage({super.key, 
    required this.imageUrl,
    required this.thumbnailWidth,
    required this.thumbnailHeight,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Image.network(
        imageUrl,
        width: thumbnailWidth,
        height: thumbnailHeight,
        fit: BoxFit.cover,
      ),
    );
  }
}
