class PhotoAlbum {
  const PhotoAlbum({
    required this.collection,
    required this.images
  });

  final String collection;
  final List<String> images;

  factory PhotoAlbum.fromJson(Map<String, dynamic> json) {
    return PhotoAlbum(
      collection: json['collection'],
      images: List<String>.from(json['images'])
    );
  }

}