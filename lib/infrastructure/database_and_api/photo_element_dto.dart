import 'package:space_pictures/domain/failure/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_element_dto.freezed.dart';

@freezed
abstract class PhotoElementDTO implements _$PhotoElementDTO {
  const PhotoElementDTO._();

  const factory PhotoElementDTO({
    required Failure failure,
    required String apodSite,
    required String copyright,
    required String date,
    required String description,
    required String hdurl,
    required String mediaType,
    required String title,
    required String url,
    required String localPath}) = _PhotoElementDTO;
}