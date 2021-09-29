import 'dart:io';

import 'package:flutter/material.dart';

// ignore: implementation_imports
import 'package:provider/src/provider.dart';
import 'package:space_pictures/application/photo_list/photo_list_bloc.dart';
import 'package:space_pictures/domain/photo_list/photo_element.dart';
import 'package:space_pictures/presentation/photo_element_details/photo_element_details.dart';
import 'package:space_pictures/presentation/properties.dart';
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
      //padding: const EdgeInsets.all(10),

      //color: Colors.grey,
      child: Column(
        children: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => PhotoElementDetails(
                          photoElement: photoElement,
                        )),
              );
            },
            child: Container(
                width: 400,
                alignment: Alignment.center,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: !localMode
                      ? FadeInImage.memoryNetwork(
                          placeholder: kTransparentImage,
                          image: photoElement.url,
                        )
                      : Image.file(File(photoElement.localPath)),
                )),
          ),
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              !localMode
                  ? IconButton(
                      iconSize: 25,
                      icon: const Icon(Icons.save_alt),
                      color: propPrimaryColor,
                      onPressed: () {
                        context.read<PhotoListBloc>().add(PhotoListEvent.savePhotoLocal(photoElement));
                      },
                    )
                  : Container(),
              Container(
                width: 280,
                padding: const EdgeInsets.all(0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(photoElement.date, style: Theme.of(context).textTheme.headline6?.copyWith(color: propSecondaryColor)),
                    Text(photoElement.title, style: Theme.of(context).textTheme.bodyText1),
                    const SizedBox(height: 20,)
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
