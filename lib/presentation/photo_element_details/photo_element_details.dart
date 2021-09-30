import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:space_pictures/domain/photo_list/photo_element.dart';
import 'package:space_pictures/presentation/photo_element_details/detail_picture.dart';
import 'package:space_pictures/presentation/photo_element_details/detail_texts.dart';
import 'package:space_pictures/presentation/photo_element_details/detail_title.dart';

class PhotoElementDetails extends StatelessWidget {
  final PhotoElement photoElement;
  final bool localMode;

  const PhotoElementDetails({Key? key, required this.photoElement, this.localMode = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size sizeOfScreen = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            ShaderMask(
              shaderCallback: (rect) {
                return const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.black, Colors.transparent],
                ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
              },
              blendMode: BlendMode.dstIn,
              child: Container(
                height: sizeOfScreen.height,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      photoElement.url,
                    ),
                    fit: BoxFit.cover,
                  ),
                  //color: Colors.amberAccent,
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                    ),
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    DetailPicture(localMode: localMode, photoElement: photoElement),
                    DetailTitle(photoElement: photoElement),
                    const SizedBox(
                      height: 5,
                    ),
                    DetailTexts(photoElement: photoElement)
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  color: Colors.black,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}



