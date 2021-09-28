part of 'photo_list_bloc.dart';

@freezed
abstract class PhotoListEvent with _$PhotoListEvent {
  const factory PhotoListEvent.getAllPhoto() = GetAllPhoto;
  const factory PhotoListEvent.getAllPhotoLocal() = GetAllPhotoLocal;
  const factory PhotoListEvent.savePhotoLocal(PhotoElement photoElement) = SavePhotoLocal;
}