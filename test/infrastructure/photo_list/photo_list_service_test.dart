import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:space_pictures/infrastructure/photo_list/photo_list_repository.dart';
import 'package:space_pictures/infrastructure/photo_list/photo_list_service.dart';

import '../../fixtures.dart';
import 'photo_list_service_test.mocks.dart';



@GenerateMocks([PhotoListRepository])
void main() {
  PhotoListService photoListService;

  var photoListRepositoryMock = MockPhotoListRepository();
  photoListService = PhotoListService(photoListRepositoryMock);

  setUp(() {});

  group('PhotoListService', () {
    group('getAllPhotoList', () {
      test('When called should initialize getAllPhotoList from Repository', () async {
        when(photoListRepositoryMock.getAllPhotoList())
            .thenAnswer((_) async => mockPhotoElementList);

        await photoListService.getAllPhoto();

        verify(photoListRepositoryMock.getAllPhotoList()).called(1);
      });

      test('When called should return correct value', () async {
        when(photoListRepositoryMock.getAllPhotoList())
            .thenAnswer((_) async => mockPhotoElementList);

        final result = await photoListService.getAllPhoto();


        expectLater(result, mockPhotoElementList);
      });
    });

  });
}
