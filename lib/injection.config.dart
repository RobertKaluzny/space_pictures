// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/photo_list/photo_list_bloc.dart' as _i9;
import 'domain/database_and_api/i_external_provider.dart' as _i3;
import 'domain/service/i_photo_list_repository.dart' as _i5;
import 'domain/service/i_photo_list_service.dart' as _i7;
import 'infrastructure/database_and_api/apod_api_provider.dart' as _i4;
import 'infrastructure/photo_list/photo_list_repository.dart' as _i6;
import 'infrastructure/photo_list/photo_list_service.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IExternalProvider>(() => _i4.ApodApiProvider());
  gh.lazySingleton<_i5.IPhotoListRepository>(
      () => _i6.PhotoListRepository(get<_i3.IExternalProvider>()));
  gh.lazySingleton<_i7.IPhotoListService>(
      () => _i8.PhotoListService(get<_i5.IPhotoListRepository>()));
  gh.factory<_i9.PhotoListBloc>(
      () => _i9.PhotoListBloc(get<_i7.IPhotoListService>()));
  return get;
}
