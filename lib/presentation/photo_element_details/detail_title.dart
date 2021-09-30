import 'package:flutter/material.dart';
import 'package:space_pictures/domain/photo_list/photo_element.dart';

import '../properties.dart';

class DetailTitle extends StatelessWidget {
  const DetailTitle({
    Key? key,
    required this.photoElement,
  }) : super(key: key);

  final PhotoElement photoElement;

  @override
  Widget build(BuildContext context) {
    return Text(photoElement.title,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headline5?.copyWith(color: propPrimaryColor));
  }
}
