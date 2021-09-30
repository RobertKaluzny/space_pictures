import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:space_pictures/application/photo_list/photo_list_bloc.dart';
import 'package:space_pictures/domain/failure/failure.dart';
import 'package:space_pictures/infrastructure/photo_list/photo_list_service.dart';

import '../../fixtures.dart';
import 'photo_list_bloc_test.mocks.dart';

@GenerateMocks([PhotoListService])
void main() {
  PhotoListBloc photoListBloc;
  var photoListServiceMock = MockPhotoListService();
  photoListBloc = PhotoListBloc(photoListServiceMock);

  setUp(() {});

  tearDown(() {});

  group('PhotoListBloc', () {
    group('initial', () {
      test('When called should return correct initial state', () {
        expect(photoListBloc.state, const PhotoListState.initial());
      });
    });

    blocTest<PhotoListBloc, PhotoListState>(
      'getAllPhoto : emits [Initial, SetAllPhoto] '
      'if downloading photos from API was a success',
      build: () {
        when(photoListServiceMock.getAllPhoto()).thenAnswer((_) async => mockPhotoElementList);

        mockPhotoElementList[0] = mockPhotoElementList[0].copyWith(
            failure: const Failure(
                failureId: 'failureId', failureValue: 'failureValue', failureForUser: 'failureForUser', value: false));

        return PhotoListBloc(photoListServiceMock);
      },
      act: (bloc) => bloc.add(const GetAllPhoto()),
      expect: () => <PhotoListState>[
        const Initial(),
        SetAllPhoto(mockPhotoElementList),
      ],
      verify: (_) => verify(photoListServiceMock.getAllPhoto()).called(1),
    );

    blocTest<PhotoListBloc, PhotoListState>(
      'getAllPhoto : emits [Initial, SetFailure] '
      'if downloading photos from API was not a success',
      build: () {
        when(photoListServiceMock.getAllPhoto()).thenAnswer((_) async => mockPhotoElementList);

        mockPhotoElementList[0] = mockPhotoElementList[0].copyWith(
            failure: const Failure(
                failureId: 'failureId', failureValue: 'failureValue', failureForUser: 'failureForUser', value: true));

        return PhotoListBloc(photoListServiceMock);
      },
      act: (bloc) => bloc.add(const GetAllPhoto()),
      expect: () => <PhotoListState>[
        const Initial(),
        SetFailure(mockPhotoElementList[0].failure)
      ],
      verify: (_) => verify(photoListServiceMock.getAllPhoto()).called(1),
    );


    blocTest<PhotoListBloc, PhotoListState>(
      'getAllPhotoLocal : emits [Initial, SetAllPhoto] '
          'if downloading photos from local was a success',
      build: () {
        when(photoListServiceMock.getAllPhotoLocal()).thenAnswer((_) async => mockPhotoElementList);

        mockPhotoElementList[0] = mockPhotoElementList[0].copyWith(
            failure: const Failure(
                failureId: 'failureId', failureValue: 'failureValue', failureForUser: 'failureForUser', value: false));

        return PhotoListBloc(photoListServiceMock);
      },
      act: (bloc) => bloc.add(const GetAllPhotoLocal()),
      expect: () => <PhotoListState>[
        const Initial(),
        SetAllPhoto(mockPhotoElementList),
      ],
      verify: (_) => verify(photoListServiceMock.getAllPhotoLocal()).called(1),
    );

    blocTest<PhotoListBloc, PhotoListState>(
      'getAllPhotoLocal : emits [Initial, SetAllPhoto] '
          'if downloading photos from local was not a success',
      build: () {
        when(photoListServiceMock.getAllPhotoLocal()).thenAnswer((_) async => mockPhotoElementList);

        mockPhotoElementList[0] = mockPhotoElementList[0].copyWith(
            failure: const Failure(
                failureId: 'failureId', failureValue: 'failureValue', failureForUser: 'failureForUser', value: true));

        return PhotoListBloc(photoListServiceMock);
      },
      act: (bloc) => bloc.add(const GetAllPhotoLocal()),
      expect: () => <PhotoListState>[
        const Initial(),
        SetFailure(mockPhotoElementList[0].failure),
      ],
      verify: (_) => verify(photoListServiceMock.getAllPhotoLocal()).called(1),
    );

    blocTest<PhotoListBloc, PhotoListState>(
      'savePhotoLocal'
          ' initialize savePhotoLocal from Service',
      build: () {
        return PhotoListBloc(photoListServiceMock);
      },
      act: (bloc) => bloc.add(SavePhotoLocal(mockPhotoElementList[0])),
      verify: (_) => verify(photoListServiceMock.savePhotoLocal(mockPhotoElementList[0])).called(1),
    );
  });
}
