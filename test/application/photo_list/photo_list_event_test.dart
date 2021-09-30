import 'package:flutter_test/flutter_test.dart';
import 'package:space_pictures/application/photo_list/photo_list_bloc.dart';

import '../../fixtures.dart';

void main() {


  group('PhotoListEvent', () {
    group('getAllPhoto', () {
      test('supports value comparisons', () {
        expect(const PhotoListEvent.getAllPhoto(), const PhotoListEvent.getAllPhoto());
      });
    });

    group('getAllPhotoLocal', () {
      test('supports value comparisons', () {
        expect(const PhotoListEvent.getAllPhotoLocal(), const PhotoListEvent.getAllPhotoLocal());
      });
    });

    group('savePhotoLocal', () {
      test('supports value comparisons', () {
        expect(PhotoListEvent.savePhotoLocal(mockPhotoElement), PhotoListEvent.savePhotoLocal(mockPhotoElement));
      });
    });



  });
}