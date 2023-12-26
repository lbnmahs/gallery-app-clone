import 'package:flutter/material.dart';
import 'package:gallery_app/data/gallery.data.dart';
import 'package:gallery_app/widgets/album_card.dart';

class AlbumScreen extends StatelessWidget {
  const AlbumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10
        ),
        
        children: availableGalleryCategories.map(
          (album) => AlbumCard(album: album)
        ).toList()
      ),
    );
  }
}
