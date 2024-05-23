import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ImageViewer {
  ImageViewer(BuildContext context, String image) {
    showDialog(
      barrierDismissible: true,
      barrierLabel: 'Barrier',
      context: context,
      builder: (context) {
        return Center(
          child: Hero(
            tag: 'IMAGEVIEW',
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: PhotoView(
                imageProvider: NetworkImage(image),
              ),
            ),
          ),
        );
      },
    );
  }
}
