part of 'gallery_cubit.dart';

@immutable
abstract class GalleryState {}

class GalleryInitial extends GalleryState {}

class GalleryLoaded extends GalleryState {
  final List<XFile> images;

  GalleryLoaded(this.images);
}