import 'package:flutter/material.dart';
import 'package:space_pictures/domain/failure/failure.dart';

class FailureItem extends StatelessWidget {
  final Failure failure;

  const FailureItem({Key? key, required this.failure}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(failure.failureForUser));
  }
}
