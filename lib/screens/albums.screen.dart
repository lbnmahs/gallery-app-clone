import 'package:flutter/material.dart';
import 'package:gallery_app/data/gallery.data.dart';
import 'package:gallery_app/widgets/album_card.dart';

class AlbumScreen extends StatelessWidget {
  const AlbumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 300,
            width: double.infinity,
            child: Center(
              child: Text(
                'Albums',
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 35,
                ),
              ),
            ),
          ),
          
          Container(
            padding: const EdgeInsets.all(4),
            child: GridView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(8),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 0.75,
              ),
              
              children: availableGalleryCategories.map(
                (album) => AlbumCard(album: album)
              ).toList()
            ),
          ),
        ],
      ),
    );
  }
}
