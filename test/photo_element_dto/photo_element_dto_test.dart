import 'package:flutter_test/flutter_test.dart';
import 'package:space_pictures/infrastructure/database_and_api/photo_element_dto.dart';

import '../fixtures.dart';



void main() {
  group('PhotoElementDto', () {
    test('support value comparisons', () {
      expect(mockPhotoElementDto, mockPhotoElementDto);
    });

    test('copyWith comparisons', () {
      PhotoElementDTO mockPhotoElementDtoModified =  PhotoElementDTO(
          failure: mockFailure,
          apodSite: 'apodSite',
          copyright: 'copyrightModified',
          date: 'date',
          description: 'description',
          hdurl: 'hdurl',
          mediaType: 'mediaType',
          title: 'title',
          url: 'url',
          localPath: 'localPath');

      expect(mockPhotoElementDto.copyWith(), mockPhotoElementDto);
      expect(mockPhotoElementDto.copyWith(copyright: 'copyrightModified'), mockPhotoElementDtoModified);
    });
  });
}
