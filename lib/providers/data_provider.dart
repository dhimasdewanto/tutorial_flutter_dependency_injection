import 'package:injectable/injectable.dart';

import '../repositories/data_repository.dart';

@injectable
class DataProvider {
  final DataRepository dataRepository;

  DataProvider(this.dataRepository);

  String get dataText => "Data dari repository: ${dataRepository.data}";
}