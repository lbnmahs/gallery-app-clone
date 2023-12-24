import 'package:flutter/material.dart';
import 'package:gallery_app/models/album.model.dart';

class AlbumCard extends StatelessWidget {
  AlbumCard({ super.key, required this.album });

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
              width: double.infinity,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              album.name,
              style: Theme.of(context).textTheme.headline6,
            ),
          )
        ],
      ),
    );    
  }
}