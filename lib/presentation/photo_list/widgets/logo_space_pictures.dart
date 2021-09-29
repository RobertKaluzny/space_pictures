import 'package:flutter/material.dart';

import '../../properties.dart';

class LogoSpacePictures extends StatelessWidget {
  const LogoSpacePictures({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Space      ',style: Theme.of(context).textTheme.headline5?.copyWith(color: propSecondaryColor, fontSize: 52)),
        Text('   pictures',style: Theme.of(context).textTheme.headline6?.copyWith(color: propPrimaryColor, fontSize: 40)),
      ],
    );
  }
}
