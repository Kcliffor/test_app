import 'package:test_app/start/domain/entities/data.dart';
import 'package:test_app/start/domain/repositories/main_repository.dart';

class SendData {
  final MainRepository repository;

  SendData({required this.repository});

  call(List<Data> items) {
    return repository.sendData(items);
  }
}
