import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_pictures/application/photo_list/photo_list_bloc.dart';
import 'package:space_pictures/presentation/photo_list/widgets/failure_item.dart';
import 'package:space_pictures/presentation/photo_list/widgets/photo_element_item.dart';


class PhotoList extends StatelessWidget {
  const PhotoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return       BlocBuilder<PhotoListBloc, PhotoListState>(builder: (context, state) {
      return state.map(
        initial: (_) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
          setFailure: (state) {
            return FailureItem(failure: state.failure);
          },
        setAllPhoto: (state) {
          return ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: state.photoList.length,
            itemBuilder: (context, index) {
              final item = state.photoList[index];
              return PhotoElementItem(
                photoElement: item,
                index: index,
              );
            },
          );
        },
      );
    });
  }

}


