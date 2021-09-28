import 'package:space_pictures/domain/failure/failure.dart';
import 'package:space_pictures/domain/photo_list/photo_element.dart';
import 'package:space_pictures/infrastructure/database_and_api/photo_element_dto.dart';

Failure mockFailure = const Failure(failureId: 'failureId', failureValue: 'failureValue', failure: false);

PhotoElement mockPhotoElement = PhotoElement(
    failure: mockFailure,
    apodSite: 'apodSite',
    copyright: 'copyright',
    date: 'date',
    description: 'description',
    hdurl: 'hdurl',
    mediaType: 'mediaType',
    title: 'title',
    url: 'url',
    localPath: 'localPath');


PhotoElementDTO mockPhotoElementDto = PhotoElementDTO(
    failure: mockFailure,
    apodSite: 'apodSite',
    copyright: 'copyright',
    date: 'date',
    description: 'description',
    hdurl: 'hdurl',
    mediaType: 'mediaType',
    title: 'title',
    url: 'url',
    localPath: 'localPath');