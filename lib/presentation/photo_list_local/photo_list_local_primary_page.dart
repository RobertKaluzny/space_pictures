import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_pictures/application/photo_list/photo_list_bloc.dart';
import 'package:space_pictures/injection.dart';
import 'package:space_pictures/presentation/photo_list_local/photo_list_local.dart';

class PhotoListLocalPrimaryPage extends StatelessWidget {
  const PhotoListLocalPrimaryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PhotoListBloc>(
      create: (context) =>
      getIt<PhotoListBloc>()
        ..add(const PhotoListEvent.getAllPhotoLocal()),
      child:
      Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            color: Colors.green,
            onPressed: () {Navigator.pop(context);},
          ),


        ),
        body: PhotoListLocal(),
      ),

    );
  }
}

