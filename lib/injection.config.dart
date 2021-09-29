// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/photo_list/photo_list_bloc.dart' as _i10;
import 'domain/database_and_api/i_external_provider.dart' as _i4;
import 'domain/service/i_photo_list_repository.dart' as _i6;
import 'domain/service/i_photo_list_service.dart' as _i8;
import 'infrastructure/database_and_api/apod_api_provider.dart' as _i5;
import 'infrastructure/photo_list/photo_list_repository.dart' as _i7;
import 'infrastructure/photo_list/photo_list_service.dart' as _i9;
import 'infrastructure/save_localy/get_and_save_localy.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.GetAndSaveLocaly>(() => _i3.GetAndSaveLocaly());
  gh.lazySingleton<_i4.IExternalProvider>(() => _i5.ApodApiProvider());
  gh.lazySingleton<_i6.IPhotoListRepository>(
      () => _i7.PhotoListRepository(get<_i4.IExternalProvider>()));
  gh.lazySingleton<_i8.IPhotoListService>(() => _i9.PhotoListService(
      get<_i6.IPhotoListRepository>(), get<_i3.GetAndSaveLocaly>()));
  gh.factory<_i10.PhotoListBloc>(
      () => _i10.PhotoListBloc(get<_i8.IPhotoListService>()));
  return get;
}
