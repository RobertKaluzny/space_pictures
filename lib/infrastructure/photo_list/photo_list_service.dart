
import 'package:injectable/injectable.dart';
import 'package:space_pictures/domain/photo_list/photo_element.dart';
import 'package:space_pictures/domain/service/i_photo_list_repository.dart';
import 'package:space_pictures/domain/service/i_photo_list_service.dart';
import 'package:space_pictures/infrastructure/database_and_api/photo_element_dto.dart';
import 'package:space_pictures/infrastructure/save_localy/get_and_save_localy.dart';


@LazySingleton(as: IPhotoListService)
class PhotoListService implements IPhotoListService {
  final IPhotoListRepository _photoListRepository;
  final GetAndSaveLocaly _getAndSaveLocaly;

  PhotoListService(this._photoListRepository, this._getAndSaveLocaly);

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



    await _getAndSaveLocaly.getAndSave(photoElement.url, _getFileName(photoElement.url), "spacepictures");

    PhotoElement photoElementWithLocalPath = photoElement.copyWith(localPath: _getAndSaveLocaly.fullPath);
    await _photoListRepository.savePhotoLocal(PhotoElementDTO.fromPhoto(photoElementWithLocalPath));
  }

  String _getFileName (String url){
    var list = url.split("/");
    return list.last;
  }

}






