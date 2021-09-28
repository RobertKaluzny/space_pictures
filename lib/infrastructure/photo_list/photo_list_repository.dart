import 'package:injectable/injectable.dart';
import 'package:space_pictures/domain/photo_list/photo_element.dart';
import 'package:space_pictures/domain/service/i_photo_list_repository.dart';

@LazySingleton(as: IPhotoListRepository)
class PhotoListRepository implements IPhotoListRepository {

  @override
  Future<List<PhotoElement>> getAllPhotoList() async {
    List<PhotoElement> tempValue = [];
    return tempValue;
  }


}
