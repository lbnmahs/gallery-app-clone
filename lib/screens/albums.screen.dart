import 'package:flutter/material.dart';
import 'package:gallery_app/data/gallery.data.dart';
import 'package:gallery_app/models/album.model.dart';
import 'package:gallery_app/screens/photos.screen.dart';
import 'package:gallery_app/widgets/album_card.dart';

class AlbumScreen extends StatelessWidget {
  const AlbumScreen({super.key});

  // This function redirects you to the Photos Screen on Album Select
  void _albumSelect(BuildContext context, PhotoAlbum album) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => PhotosScreen(
          name: album.collection, images: album.images
        )
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Album Title
          SizedBox(
            height: 250,
            width: double.infinity,
            child: Center(
              child: Text( 'Albums',
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 35,
                ),
              ),
            ),
          ),

          // Icons
          Padding(
            padding: const EdgeInsets.all( 25.0 ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.add, color: Theme.of(context).colorScheme.primary, size: 25,),
                const SizedBox(width: 15,),
                Icon(Icons.search_rounded, color: Theme.of(context).colorScheme.primary, size: 25,),
                const SizedBox(width: 15,),
                Icon(Icons.menu_rounded, color: Theme.of(context).colorScheme.primary, size: 25,)
              ],
            ),
          ),

          // 
          Padding(
            padding: const EdgeInsets.symmetric( horizontal: 25.0 ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text( 'My albums',
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text( 'View all',
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      color: Theme.of(context).colorScheme.primary.withOpacity(0.75),
                      fontSize: 16,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                ),
              ],
            ),
          ),
          
          Container(
            padding: const EdgeInsets.all(4),
            child: GridView(
              shrinkWrap: true,
              // Since we are in a SingleScrollView
              physics: const NeverScrollableScrollPhysics(), 
              padding: const EdgeInsets.all(8),
              // Layout of the Grid
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 0.75,
              ),
              // The Album Cards
              children: availableGalleryCategories.map(
                (album) => AlbumCard(
                  album: album,
                  onAlbumSelect: () { _albumSelect(context, album); },
                )
              ).toList()
            ),
          ),
        ],
      ),
    );
  }
}
