import 'package:flutter/material.dart';
import 'package:space_pictures/presentation/properties.dart';



class GroupofTextHorizontal extends StatelessWidget {
  final String title;
  final String text;

  const GroupofTextHorizontal({Key? key, required this.title, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          textAlign: TextAlign.left,
          style: Theme.of(context).textTheme.subtitle1?.copyWith(color: propSecondaryColor)),

        const SizedBox(height:3),
        Text(
          text,
          textAlign: TextAlign.left,
          style: Theme.of(context)
              .textTheme
              .bodyText1,
        ),
        const SizedBox(height:15),
      ],
    );
  }
}
