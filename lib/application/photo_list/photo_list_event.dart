part of 'photo_list_bloc.dart';

@freezed
abstract class PhotoListEvent with _$PhotoListEvent {
  const factory PhotoListEvent.getAllPhoto() = GetAllPhoto;
}