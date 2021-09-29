import 'package:flutter/material.dart';
import 'package:space_pictures/presentation/photo_list/widgets/logo_space_pictures.dart';
import 'package:space_pictures/presentation/properties.dart';

class Downloader extends StatelessWidget {
  const Downloader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  const [
          LogoSpacePictures(),
          SizedBox(height: 20,),
          CircularProgressIndicator(color: propSecondaryColor,),
        ],
      ),
    );
  }
}
