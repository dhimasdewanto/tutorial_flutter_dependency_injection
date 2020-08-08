import 'package:injectable/injectable.dart';

import '../configs/env.dart';
import 'data_repository.dart';

@LazySingleton(env: [Env.dev], as: DataRepository)
class DataRepositoryDev implements DataRepository {
  @override
  String get data => "Lingkungan Development";
}