
import 'package:injectable/injectable.dart';
import 'package:space_pictures/domain/photo_list/photo_element.dart';
import 'package:space_pictures/domain/service/i_photo_list_repository.dart';
import 'package:space_pictures/domain/service/i_photo_list_service.dart';
import 'package:space_pictures/infrastructure/database_and_api/photo_element_dto.dart';


@LazySingleton(as: IPhotoListService)
class PhotoListService implements IPhotoListService {
  final IPhotoListRepository _photoListRepository;

  PhotoListService(this._photoListRepository);

  @override
  Future<List<PhotoElement>> getAllPhoto() async {

    List<PhotoElement> photoList = await _photoListRepository.getAllPhotoList();
    return photoList;
  }

  @override
  Future<List<PhotoElement>> getAllPhotoLocal() async {
    List<PhotoElement> photoList = await _photoListRepository.getAllPhotoLocalList();
    return photoList;
  }

  @override
  savePhotoLocal(PhotoElement photoElement) async {

    PhotoElement photoElementWithLocalPath = photoElement.copyWith(localPath: 'temp_Path');
    await _photoListRepository.savePhotoLocal(PhotoElementDTO.fromPhoto(photoElementWithLocalPath));
  }

}






