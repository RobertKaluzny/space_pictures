import 'dart:io';
import 'package:flutter/material.dart';
import 'package:space_pictures/domain/photo_list/photo_element.dart';
import 'package:transparent_image/transparent_image.dart';

class PhotoElementItem extends StatelessWidget {
  final PhotoElement photoElement;
  final int index;

  const PhotoElementItem({Key? key, required this.photoElement, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(10),
      color: Colors.grey,
      child: Column(
        children: [
          Container(
              alignment: Alignment.center,
              child: Container(
                child: FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image: photoElement.url,
                ),
              ),),

          Row(
            children: [
              Column(
                children: [
                  SizedBox(height: 10,),
                  Text(photoElement.date, style: TextStyle(fontSize: 12)),
                  SizedBox(height: 10,),
                  Text(photoElement.title, style: TextStyle(fontSize: 12)),
                ],
              ),

            ],
          ),






        ],
      ),
    );
  }
}
