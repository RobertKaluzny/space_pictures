import 'package:injectable/injectable.dart';
import 'package:space_pictures/domain/database_and_api/i_external_provider.dart';
import 'package:space_pictures/domain/photo_list/photo_element.dart';
import 'package:space_pictures/domain/service/i_photo_list_repository.dart';
import 'package:space_pictures/infrastructure/database_and_api/db_sqlite_provider.dart';
import 'package:space_pictures/infrastructure/database_and_api/photo_element_dto.dart';

@LazySingleton(as: IPhotoListRepository)
class PhotoListRepository implements IPhotoListRepository {

  final IExternalProvider _externalProvider;

  PhotoListRepository(this._externalProvider);

  @override
  Future<List<PhotoElement>> getAllPhotoList() async {
    List<PhotoElementDTO> photoElementDTOList = await _externalProvider.getAllPhoto();
    return photoElementDTOList.map((e) => e.toPhotoElement()).toList();
  }

  @override
  Future<List<PhotoElement>> getAllPhotoLocalList() async {
    final DBSQLitetProvider dbsqLitetProvider  = DBSQLitetProvider.instance;
    List<PhotoElementDTO> photoElementDTOList = await dbsqLitetProvider.getAllPhoto();
    return photoElementDTOList.map((e) => e.toPhotoElement()).toList();
  }

  @override
  savePhotoLocal(PhotoElementDTO photoElementDTO) async {
    final DBSQLitetProvider dbsqLitetProvider  = DBSQLitetProvider.instance;
    await dbsqLitetProvider.createPhotoElement(photoElementDTO);
  }


}
