import 'package:bloc/bloc.dart';
import 'package:gallery_app/data/repository/image_repository.dart';
import 'package:gallery_app/models/album.model.dart';
import 'package:meta/meta.dart';

part 'images_event.dart';
part 'images_state.dart';

class ImagesBloc extends Bloc<ImagesEvent, ImagesState> {
  final ImageRepository imageRepository;
  
  ImagesBloc(this.imageRepository) : super(ImagesInitial()) {
    on<ImagesFetched>(_getImages);
  }

  void _getImages(ImagesFetched event, Emitter<ImagesState> emit) async {
    emit(ImagesLoading());
    try {
      final images = await imageRepository.getImagesByCollection(event.collection);
      emit(ImagesLoaded(images));
    } catch (e) {
      emit(ImagesError(e.toString()));
    }
  }
}
