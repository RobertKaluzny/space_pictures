import 'package:space_pictures/domain/photo_list/photo_element.dart';
import 'package:space_pictures/infrastructure/database_and_api/photo_element_dto.dart';

abstract class IPhotoListRepository {
  Future<List<PhotoElement>> getAllPhotoList();
  Future<List<PhotoElement>> getAllPhotoLocalList();
  savePhotoLocal(PhotoElementDTO photoElementDTO);
}