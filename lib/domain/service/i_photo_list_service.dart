import 'package:space_pictures/domain/photo_list/photo_element.dart';

abstract class IPhotoListService {
  Future<List<PhotoElement>> getAllPhoto();
}