import 'package:flutter_test/flutter_test.dart';
import 'package:space_pictures/application/photo_list/photo_list_bloc.dart';

import '../../fixtures.dart';

void main() {


  group('PhotoListState', () {
    group('initial', () {
      test('supports value comparisons', () {
        expect(const PhotoListState.initial(), const PhotoListState.initial());
      });
    });

    group('setAllPhoto', () {
      test('supports value comparisons', () {
        expect(PhotoListState.setAllPhoto(mockPhotoElementList), PhotoListState.setAllPhoto(mockPhotoElementList));
      });
    });

    group('setFailure', () {
      test('supports value comparisons', () {
        expect(PhotoListState.setFailure(mockFailure), PhotoListState.setFailure(mockFailure));
      });
    });



  });
}