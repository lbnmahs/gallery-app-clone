part of 'images_bloc.dart';

@immutable
sealed class ImagesState {}

final class ImagesInitial extends ImagesState {}

final class ImagesLoading extends ImagesState {}

final class ImagesLoaded extends ImagesState {
  ImagesLoaded(this.images);

  final List<PhotoAlbum> images;
}

final class ImagesError extends ImagesState {
  ImagesError(this.message);

  final String message;
}