import 'dart:io';

import 'package:dio/dio.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';


//todo: for refactoring
@injectable
class GetAndSaveLocaly {
  Directory _directory = Directory('');
  File _file = File('');
  String _fullPathDirectory = "";
  String fullPath = "";
  String url = '';
  String fileName = '';
  String folderName = '';


  Future<bool> getAndSave(urlTemp, fileNameTemp, folderName) async {
    url = urlTemp;
    fileName = fileNameTemp;
    folderName = folderName;

    try {
      if (Platform.isAndroid) {
        await setPathOnAndroidStorage();
      } else {
        await setPathOnAndroidPhotos();
      }

      _file = File(_directory.path + "/$fileName");

      await _saveFile();

    } catch (e) {
      //todo: error
      print(e);
    }
    return false;
  }

  Future<bool> _saveFile() async {
    if (!await _directory.exists()) {
      await _directory.create(recursive: true);
    }

    if (await _directory.exists()) {

      fullPath = _file.path;
      await Dio().download(url, _file.path, onReceiveProgress: (value1, value2) {
    //    print("postep + $value1 : $value2");
      });
      if (Platform.isIOS) {
        await ImageGallerySaver.saveFile(_file.path, isReturnPathOfIOS: true);
      }
      return true;
    }
    return false;
  }

  Future<bool> setPathOnAndroidPhotos() async {
    if (await _requestPermission(Permission.photos)) {
      _directory = await getTemporaryDirectory();
    } else {
      return false;
    }
    return true;
  }

  Future<bool> setPathOnAndroidStorage() async {
    if (await _requestPermission(Permission.storage)) {
      _directory = await getExternalStorageDirectory() as Directory;
      List<String> paths = _directory.path.split("/");
      for (int x = 1; x < paths.length; x++) {
        String folder = paths[x];
        if (folder != "Android") {
          _fullPathDirectory += "/" + folder;
        } else {
          break;
        }
      }
      _fullPathDirectory = _fullPathDirectory + '/' + folderName;
      _directory = Directory(_fullPathDirectory);
    } else {
      return false;
    }

    return true;
  }


  Future<bool> _requestPermission(Permission permission) async {
    if (await permission.isGranted) {
      return true;
    } else {
      var result = await permission.request();
      if (result == PermissionStatus.granted) {
        return true;
      }
    }
    return false;
  }
}