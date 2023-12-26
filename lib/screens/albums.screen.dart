import 'package:flutter/material.dart';
import 'package:gallery_app/data/gallery.data.dart';
import 'package:gallery_app/widgets/album_card.dart';

class AlbumScreen extends StatelessWidget {
  const AlbumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(8),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 4,
        mainAxisSpacing: 4
      ),
      
      children: availableGalleryCategories.map(
        (album) => AlbumCard(album: album)
      ).toList()
    );
  }
}
