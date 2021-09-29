import 'dart:io';

import 'package:flutter/material.dart';
// ignore: implementation_imports
import 'package:provider/src/provider.dart';
import 'package:space_pictures/application/photo_list/photo_list_bloc.dart';
import 'package:space_pictures/domain/photo_list/photo_element.dart';
import 'package:transparent_image/transparent_image.dart';

class PhotoElementItem extends StatelessWidget {
  final PhotoElement photoElement;
  final int index;
  final bool localMode;

  const PhotoElementItem({Key? key, required this.photoElement, required this.index, this.localMode = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(10),
      color: Colors.grey,
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: !localMode
                ? FadeInImage.memoryNetwork(
                    placeholder: kTransparentImage,
                    image: photoElement.url,
                  )
                : Image.file(File(photoElement.localPath)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text(photoElement.date, style: const TextStyle(fontSize: 12)),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(photoElement.title, style: const TextStyle(fontSize: 12)),
                ],
              ),
              !localMode
                  ? Container(
                      width: 60,
                      height: 35,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: TextButton(
                        onPressed: () {
                          context.read<PhotoListBloc>().add(PhotoListEvent.savePhotoLocal(photoElement));
                        },
                        child: const Text(
                          'Save',
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ),
                    )
                  : Container(),
            ],
          ),
        ],
      ),
    );
  }
}
