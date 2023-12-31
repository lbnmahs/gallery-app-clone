import 'package:flutter/material.dart';

class PhotosScreen extends StatelessWidget {
  const PhotosScreen({ 
    super.key, 
    required this.name, 
    required this.images 
  });

  final String name;
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text( name ),
      ),
      body: GridView.builder(
        itemCount: images.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 1.0,
          mainAxisSpacing: 1.0,
          childAspectRatio: 0.5
        ),
        itemBuilder: (context, index) {
          return Image.network( 
            images[index],
            fit: BoxFit.cover,
            height: 50,
            width: 50,
          );
        },
      ),
    );
  }
}