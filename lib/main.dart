import 'package:flutter/material.dart';
import 'package:space_pictures/injection.dart';
import 'package:space_pictures/presentation/photo_list/photo_list_primary_page.dart';

void main() {
  configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Space pictures',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PhotoListPrimaryPage(),
    );
  }
}
