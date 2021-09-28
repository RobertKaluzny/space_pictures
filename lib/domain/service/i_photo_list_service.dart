import 'package:space_pictures/domain/photo_list/photo_element.dart';

abstract class IPhotoListService {
  Future<List<PhotoElement>> getAllPhoto();
  Future<List<PhotoElement>> getAllPhotoLocal();
  savePhotoLocal(PhotoElement photoElement);
}