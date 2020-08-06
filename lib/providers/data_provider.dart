import '../repositories/data_repository.dart';

class DataProvider {
  final _dataRepository = DataRepository();

  String get dataText => "Data dari repository: ${_dataRepository.data}";
}