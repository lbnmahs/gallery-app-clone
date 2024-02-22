part of 'images_bloc.dart';

@immutable
sealed class ImagesEvent {}

final class ImagesFetched extends ImagesEvent{
  ImagesFetched(this.collection);
  final String collection;}
