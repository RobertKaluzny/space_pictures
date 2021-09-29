import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_pictures/application/photo_list/photo_list_bloc.dart';
import 'package:space_pictures/injection.dart';
import 'package:space_pictures/language/app_localizations.dart';
import 'package:space_pictures/presentation/photo_list/photo_list.dart';
import 'package:space_pictures/presentation/photo_list_local/photo_list_local_primary_page.dart';

class PhotoListPrimaryPage extends StatelessWidget {
  const PhotoListPrimaryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PhotoListBloc>(
      create: (context) => getIt<PhotoListBloc>()..add(const PhotoListEvent.getAllPhoto()),
      child: BlocBuilder<PhotoListBloc, PhotoListState>(
        builder: (context, state) {
          return Scaffold(
              appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.white,
                title: Container(
                  //padding: EdgeInsets.symmetric(horizontal: propPadding/),
                  alignment: Alignment.center,
                  child: Text(
                    AppLocalizations.of(context)!.translate('title'),
                    style: const TextStyle(fontSize: 26, color: Colors.brown, fontWeight: FontWeight.bold),
                  ),
                ),
                actions: const <Widget>[
                  SizedBox(
                    width: 40,
                  )
                ],
              ),
              body: const PhotoList(),
              floatingActionButton: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(5),
                    child: FloatingActionButton(
                      heroTag: '2',
                      backgroundColor: Colors.blueGrey,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const PhotoListLocalPrimaryPage()),
                        );
                      },
                      child: const Icon(Icons.star),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    child: FloatingActionButton(
                      heroTag: '1',
                      backgroundColor: Colors.blueGrey,
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
