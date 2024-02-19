import 'package:gallery_app/models/album.model.dart';

import '../provider/image_data_provider.dart';

class ImageRepository {
  ImageRepository(this.dataProvider);

  final ImageDataProvider dataProvider;

  Future<List<PhotoAlbum>> getImagesByCollection(String collection) async {
    return await dataProvider.getImagesByCollection(collection);
  }
  
}