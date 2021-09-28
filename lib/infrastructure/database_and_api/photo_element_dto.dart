import 'package:space_pictures/domain/failure/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:space_pictures/domain/photo_list/photo_element.dart';

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

  factory PhotoElementDTO.fromJSON(Map<String, dynamic> json) =>
      PhotoElementDTO(
        failure: Failure.setNoFailure(),
        apodSite: json["apod_site"],
        copyright: json["copyright"],
        date: json["date"],
        description: json["description"],
        hdurl: json["hdurl"],
        mediaType: json["media_type"],
        title: json["title"],
        url: json["url"],
        //localPath: json["local_path"],
        localPath:  "",

      );

  PhotoElement toPhotoElement() {
    return PhotoElement(
        failure: failure,
        apodSite: apodSite,
        copyright: copyright,
        date: date,
        description: description,
        hdurl: hdurl,
        mediaType: mediaType,
        title: title,
        url: url,
        localPath: localPath);
  }

}