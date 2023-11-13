import 'package:flutter/material.dart';

class ImageWithProgress extends StatelessWidget {
  final String imageUrl;

  const ImageWithProgress({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.network(
        imageUrl,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) {
            return child;
          } else {
            return Center(
              child: CircularProgressIndicator(
                value: loadingProgress.expectedTotalBytes != null
                    ? loadingProgress.cumulativeBytesLoaded /
                        (loadingProgress.expectedTotalBytes ?? 1)
                    : null,
              ),
            );
          }
        },
        errorBuilder:
            (context, error, stackTrace) {
          return const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.error,
                color: Colors.red,
                size: 50
                ),
                SizedBox(height: 12),
                Text('Failed to load image'),
              ],
            ),
          );
        },
      ),
    );
  }
}
