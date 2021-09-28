import 'package:flutter_test/flutter_test.dart';
import 'package:space_pictures/domain/photo_list/photo_element.dart';

import '../../fixtures.dart';

void main() {
  group('PhotoElement', () {
    test('support value comparisons', () {
      expect(mockPhotoElement, mockPhotoElement);
    });

    test('copyWith comparisons', () {
      PhotoElement mockPhotoElementModified =  PhotoElement(
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

      expect(mockPhotoElement.copyWith(), mockPhotoElement);
      expect(mockPhotoElement.copyWith(copyright: 'copyrightModified'), mockPhotoElementModified);
    });
  });
}
