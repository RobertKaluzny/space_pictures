part of 'photo_list_bloc.dart';


@freezed
abstract class PhotoListState with _$PhotoListState {
  const factory PhotoListState.initial() = Initial;
  const factory PhotoListState.setAllPhoto(List<PhotoElement> photoList) = SetAllPhoto;
}