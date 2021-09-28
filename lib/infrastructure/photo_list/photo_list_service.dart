
import 'package:injectable/injectable.dart';
import 'package:space_pictures/domain/photo_list/photo_element.dart';
import 'package:space_pictures/domain/service/i_photo_list_repository.dart';
import 'package:space_pictures/domain/service/i_photo_list_service.dart';


@LazySingleton(as: IPhotoListService)
class PhotoListService implements IPhotoListService {
  final IPhotoListRepository _photoListRepository;

  PhotoListService(this._photoListRepository);

  @override
  Future<List<PhotoElement>> getAllPhoto() async {

    List<PhotoElement> photoList = await _photoListRepository.getAllPhotoList();
    return photoList;
  }





}






