import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:space_pictures/domain/failure/failure.dart';


part 'photo_element.freezed.dart';

@freezed
abstract class PhotoElement implements _$PhotoElement {
  const PhotoElement._();

  const factory PhotoElement({
    required Failure failure,
    required String apodSite,
    required String copyright,
    required String date,
    required String description,
    required String hdurl,
    required String mediaType,
    required String title,
    required String url,
    required String localPath
  }) = _PhotoElement;
}