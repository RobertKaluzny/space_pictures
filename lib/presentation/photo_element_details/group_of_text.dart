import 'package:flutter/material.dart';


class GroupofText extends StatelessWidget {
  final String title;
  final String text;

  const GroupofText({Key? key, required this.title, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: <Widget>[
            Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              text,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .subtitle1,
            ),
          ],
        ),
      ),
    );
  }
}
