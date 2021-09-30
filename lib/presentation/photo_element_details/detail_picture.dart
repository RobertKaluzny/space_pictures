import 'dart:io';

import 'package:flutter/material.dart';
import 'package:space_pictures/domain/photo_list/photo_element.dart';

class DetailPicture extends StatelessWidget {
  const DetailPicture({
    Key? key,
    required this.localMode,
    required this.photoElement,
  }) : super(key: key);

  final bool localMode;
  final PhotoElement photoElement;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 270,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: !localMode
            ? Image.network(photoElement.url, fit: BoxFit.cover)
            : Image.file(File(photoElement.localPath)),
      ),
    );
  }
}
