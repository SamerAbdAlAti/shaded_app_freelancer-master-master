import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shaded_app_freelancer/features/user/my_services/presentation/bloc-cubit/image/gallery_cubit.dart';

import '../../../../../_core/theme.dart';

Widget addImage() => BlocBuilder<GalleryCubit, GalleryState>(
      builder: (context, state) {
        if (state is GalleryLoaded) {
          return Container(
            height: 81,
            width: 81,
            child: context.read<GalleryCubit>().buildGridView(),
          );
        } else {
          return GestureDetector(
            onTap: () => context.read<GalleryCubit>().pickImages(),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Center(
                child: Container(
                  width: 81,
                  height: 81,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(
                          style: BorderStyle.solid, color: appColor)),
                  child: Icon(Icons.add_a_photo),
                ),
              ),
            ),
          );
        }
      },
    );
