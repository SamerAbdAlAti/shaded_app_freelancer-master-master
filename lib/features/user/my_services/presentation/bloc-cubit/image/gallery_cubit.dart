import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';

part 'gallery_state.dart';

class GalleryCubit extends Cubit<GalleryState> {
  GalleryCubit() : super(GalleryInitial());

  List<XFile> images = [];
  List<XFile>? imageList = [];

  Future pickImages() async {
    List<XFile>? pickedFiles = await ImagePicker().pickMultiImage();
    if (pickedFiles.isNotEmpty) {
      imageList!.addAll(pickedFiles);
      emit(GalleryLoaded(images));
    }
  }

  Widget buildGridView() {
    return Container(
      height: 81,
      width: 81,
      child: GridView.builder(
        itemCount: imageList!.length,
        itemBuilder: (context, index) {
          images.map((image) {
            return Image.file(
              File("${imageList![index].path}"),
              fit: BoxFit.cover,
            );
          }).toList();
          return null;
        },
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
      ),
    );
  }
}
