import 'package:space_pictures/domain/photo_list/photo_element.dart';

abstract class IPhotoListRepository {
  Future<List<PhotoElement>> getAllPhotoList();
}