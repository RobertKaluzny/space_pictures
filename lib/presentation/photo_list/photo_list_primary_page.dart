import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_pictures/application/photo_list/photo_list_bloc.dart';
import 'package:space_pictures/injection.dart';
import 'package:space_pictures/presentation/photo_list/photo_list.dart';
import 'package:space_pictures/presentation/photo_list_local/photo_list_local_primary_page.dart';
import 'package:space_pictures/presentation/properties.dart';

class PhotoListPrimaryPage extends StatelessWidget {
  const PhotoListPrimaryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PhotoListBloc>(
      create: (context) => getIt<PhotoListBloc>()..add(const PhotoListEvent.getAllPhoto()),
      child: BlocBuilder<PhotoListBloc, PhotoListState>(
        builder: (context, state) {
          return Scaffold(
              body: const SafeArea(
                  child:  PhotoList()),
              floatingActionButton: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(5),
                    child: FloatingActionButton(
                      heroTag: '2',
                      backgroundColor: propPrimaryColor,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const PhotoListLocalPrimaryPage()),
                        );
                      },
                      child: const Icon(Icons.bookmark),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    child: FloatingActionButton(
                      heroTag: '1',
                      backgroundColor: propSecondaryColor,
                      onPressed: () {
                        context.read<PhotoListBloc>().add(const PhotoListEvent.getAllPhoto());
                      },
                      child: const Icon(Icons.refresh),
                    ),
                  ),
                ],
              ));
        },
      ),
    );
  }
}
