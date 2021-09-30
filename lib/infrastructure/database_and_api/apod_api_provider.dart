import 'dart:collection';
import 'dart:convert';

import "package:http/http.dart" as http;
import 'package:injectable/injectable.dart';
import 'package:space_pictures/domain/database_and_api/i_external_provider.dart';
import 'package:space_pictures/domain/failure/failure.dart';
import 'package:space_pictures/infrastructure/database_and_api/photo_element_dto.dart';

import '../../mock_photo_list.dart';

@LazySingleton(as: IExternalProvider)
class ApodApiProvider implements IExternalProvider {
  @override
  Future<List<PhotoElementDTO>> getAllPhoto() async {
    String link = 'https://apodapi.herokuapp.com/api/?thumbs=true&count=3';
    List<PhotoElementDTO> photoElementDTOList = [];

    try {

   // final response = await http.get(Uri.parse(link));
   // final responseJSON = jsonDecode(response.body) as List<dynamic>;

    final responseJSON = jsonDecode(ciagAPI10) as List<dynamic>;

      photoElementDTOList = responseJSON.map((i) {
        Map<String, dynamic> map = HashMap.from(i);
        return PhotoElementDTO.fromJSON(map);
      }).toList();

    } catch (e) {

      List<PhotoElementDTO> photoElementDTOFailure = [
        PhotoElementDTO.setFailure(const Failure(failureId: 'API', failureValue: 'Error from API', failureForUser: 'Error from API', value: true))
      ];
      return photoElementDTOFailure;

    }
    return photoElementDTOList;
  }
}
