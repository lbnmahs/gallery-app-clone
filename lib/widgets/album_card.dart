import 'package:flutter/material.dart';
import 'package:gallery_app/models/album.model.dart';

class AlbumCard extends StatelessWidget {
  const AlbumCard({ super.key, required this.album });

  final PhotoAlbum album;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
            album.images[0],
            fit: BoxFit.cover,
            height: 190,
            width: 180,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Row(
              children: [
                Text(
                  album.name,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.w300
                  ),
                ),
                const Spacer(),
                Text(
                  '${album.images.length}',
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: Theme.of(context).colorScheme.primary.withOpacity(0.6),
                    fontWeight: FontWeight.w300
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );    
  }
}