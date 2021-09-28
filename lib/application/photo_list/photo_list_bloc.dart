
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:space_pictures/domain/photo_list/photo_element.dart';
import 'package:space_pictures/domain/service/i_photo_list_service.dart';

part 'photo_list_bloc.freezed.dart';

part 'photo_list_event.dart';

part 'photo_list_state.dart';

@injectable
class PhotoListBloc extends Bloc<PhotoListEvent, PhotoListState> {
  final IPhotoListService _photoListService;

  PhotoListBloc(this._photoListService) : super(const PhotoListState.initial());

  @override
  Stream<PhotoListState> mapEventToState(
      PhotoListEvent event,
      ) async* {
    yield* event.map(
        getAllPhoto: (e) async* {
          yield const PhotoListState.initial();
          List<PhotoElement> photoList = await _photoListService.getAllPhoto();
          yield PhotoListState.setAllPhoto(photoList);
        },
      getAllPhotoLocal: (e) async* {
        yield const PhotoListState.initial();
        List<PhotoElement> photoList = await _photoListService.getAllPhotoLocal();
        yield PhotoListState.setAllPhoto(photoList);
      },
      savePhotoLocal: (e) async* {
        await _photoListService.savePhotoLocal(e.photoElement);
      },
    );
  }
}

