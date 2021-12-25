import 'package:test_app/start/domain/entities/data.dart';

abstract class MainRepository {
  List<Data> getData();
  sendData(List<Data> items);
}
