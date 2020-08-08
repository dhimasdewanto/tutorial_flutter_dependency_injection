import 'package:injectable/injectable.dart';

import '../configs/env.dart';
import 'data_repository.dart';

@LazySingleton(env: [Env.prod], as: DataRepository)
class DataRepositoryProd implements DataRepository {
  @override
  String get data => "Lingkungan Produksi";
}