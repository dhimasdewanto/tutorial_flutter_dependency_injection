import '../repositories/data_repository.dart';

class DataProvider {
  final _dataRepository = DataRepository();

  String get dataText => _dataRepository.data;
}