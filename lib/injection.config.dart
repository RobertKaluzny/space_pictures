// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'domain/service/i_photo_list_repository.dart' as _i3;
import 'domain/service/i_photo_list_service.dart' as _i5;
import 'infrastructure/photo_list/photo_list_repository.dart' as _i4;
import 'infrastructure/photo_list/photo_list_service.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IPhotoListRepository>(() => _i4.PhotoListRepository());
  gh.lazySingleton<_i5.IPhotoListService>(
      () => _i6.PhotoListService(get<_i3.IPhotoListRepository>()));
  return get;
}
