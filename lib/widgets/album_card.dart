import 'package:flutter/material.dart';
import 'package:gallery_app/models/album.model.dart';
import 'package:transparent_image/transparent_image.dart';

class AlbumCard extends StatelessWidget {
  const AlbumCard({ 
    super.key, 
    required this.album, 
    required this.onAlbumSelect 
  });

  final PhotoAlbum album;
  final void Function() onAlbumSelect;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      // InkWell makes the widget clickable
      child: InkWell(
        onTap: onAlbumSelect,
        child: Column(
          children: [
            // Fade In Image Loading
            FadeInImage(
              placeholder: MemoryImage(kTransparentImage),
              image: NetworkImage(album.images[0]),
              height:180,
              width: 180,
              fit: BoxFit.cover,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Text(
                      album.collection,
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
        ),
      ),
    );    
  }
}