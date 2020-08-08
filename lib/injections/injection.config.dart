// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../providers/data_provider.dart';
import '../repositories/data_repository.dart';
import '../repositories/data_repository_dev.dart';
import '../repositories/data_repository_prod.dart';

/// Environment names
const _prod = 'prod';
const _dev = 'dev';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<DataRepository>(() => DataRepositoryProd(),
      registerFor: {_prod});
  gh.lazySingleton<DataRepository>(() => DataRepositoryDev(),
      registerFor: {_dev});
  gh.factory<DataProvider>(() => DataProvider(get<DataRepository>()));
  return get;
}
