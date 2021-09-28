import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_pictures/application/photo_list/photo_list_bloc.dart';
import 'package:space_pictures/injection.dart';
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
                  child: const Text(
                    "Space pictures",
                    style: TextStyle(fontSize: 26, color: Colors.brown, fontWeight: FontWeight.bold),
                  ),
                ),
                actions: const <Widget>[
                  SizedBox(
                    width: 40,
                  )
                ],
              ),
              body: const PhotoList(),
              floatingActionButton: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(5),
                      child: FloatingActionButton(
                        heroTag: '2',
                        backgroundColor: Colors.blueGrey,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => PhotoListLocalPrimaryPage()),
                          );
                        },
                        child: Icon(Icons.star),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: FloatingActionButton(
                        heroTag: '1',
                        backgroundColor: Colors.blueGrey,
                        onPressed: () {
                          context.read<PhotoListBloc>().add(PhotoListEvent.getAllPhoto());
                        },
                        child: Icon(Icons.refresh),
                      ),
                    ),
                  ],
                ),
              ));
        },
      ),
    );
  }
}
