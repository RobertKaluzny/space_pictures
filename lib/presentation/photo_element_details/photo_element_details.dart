import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:space_pictures/domain/photo_list/photo_element.dart';
import 'package:space_pictures/presentation/photo_element_details/group_of_text_horizontal.dart';
import 'package:space_pictures/presentation/properties.dart';

class PhotoElementDetails extends StatelessWidget {
  final PhotoElement photoElement;

  const PhotoElementDetails({Key? key, required this.photoElement}) : super(key: key);

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
                    Container(
                      margin: const EdgeInsets.all(10),
                      height: 270,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(photoElement.url, fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: Text(photoElement.title,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headline5?.copyWith(color: propPrimaryColor)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      alignment: Alignment.topLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          GroupofTextHorizontal(title: "Date", text: photoElement.date),
                          GroupofTextHorizontal(title: "Copyright", text: photoElement.copyright),
                          GroupofTextHorizontal(title: "Description", text: photoElement.description),
                        ],
                      ),
                    )
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
