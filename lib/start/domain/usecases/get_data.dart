import 'package:test_app/start/domain/entities/data.dart';
import 'package:test_app/start/domain/repositories/main_repository.dart';

class GetData {
  final MainRepository repository;

  GetData({required this.repository});

  List<Data> call() {
    return repository.getData();
  }
}
