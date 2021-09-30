import 'package:flutter/material.dart';
import 'package:space_pictures/domain/failure/failure.dart';

import '../../properties.dart';

class FailureItem extends StatelessWidget {
  final Failure failure;

  const FailureItem({Key? key, required this.failure}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('ERROR', style: Theme.of(context).textTheme.headline5?.copyWith(color: propSecondaryColor, fontSize: 24)),
          const SizedBox( height: 10,),
          Text(failure.failureForUser,
              style: Theme.of(context).textTheme.subtitle2?.copyWith(color: propPrimaryColor, fontSize: 18)),
        ],
      ),
    );
  }
}
