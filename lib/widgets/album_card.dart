import 'package:flutter/material.dart';
import 'package:gallery_app/models/album.model.dart';

class AlbumCard extends StatelessWidget {
  const AlbumCard({ super.key, required this.album });

  final PhotoAlbum album;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Expanded(
            child: Image.network(
              album.images[0],
              fit: BoxFit.cover,
              width: 50,
              height: 50,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              album.name,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Theme.of(context).colorScheme.onPrimary,
                fontWeight: FontWeight.w300
              ),
            ),
          )
        ],
      ),
    );    
  }
}