import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:gallery_app/models/album.model.dart';
import 'package:gallery_app/secrets.dart';

class ImageDataProvider {
  Future<List<PhotoAlbum>> getImagesByCollection(String collection) async {
    try{
      final res = await http.get(
        Uri.parse('https://api.unsplash.com/photos/random?count=8&query=$collection'),
        headers: {'Authorization': 'Client-ID $client_id'}
      );
      final List<String> images = json.decode(res.body);

      final List<PhotoAlbum> photoAlbums = images.map((image) => PhotoAlbum(
        collection: collection,
        images: images
      )).toList();

      return photoAlbums;

    } catch(e) {
      throw e.toString();
    }
  }
}