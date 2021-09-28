import 'package:space_pictures/infrastructure/database_and_api/photo_element_dto.dart';

abstract class IExternalProvider {
  Future<List<PhotoElementDTO>> getAllPhoto();
}