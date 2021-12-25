import 'package:test_app/start/data/models/data_model.dart';
import 'package:test_app/start/domain/entities/data.dart';

abstract class MainRemoteDataSource {
  List<DataModel> getData();
  sendData(List<Data> items);
}

class MainRemoteDataSourceImpl implements MainRemoteDataSource {
  final List<Map<String, dynamic>> data = [
    {
      "id": 1,
      "order": 1,
      "order_prefix": "",
    },
    {
      "id": 2,
      "order": 2,
      "order_prefix": "a",
    },
    {
      "id": 3,
      "order": 2,
      "order_prefix": "b",
    },
    {
      "id": 4,
      "order": 2,
      "order_prefix": "c",
    },
    {
      "id": 5,
      "order": 3,
      "order_prefix": "",
    },
    {
      "id": 6,
      "order": 4,
      "order_prefix": "",
    },
  ];

  @override
  List<DataModel> getData() {
    var res = data.map((json) => DataModel.fromJson(json)).toList();
    return res;
  }

  @override
  sendData(List<Data> items) {
    // TODO: implement sendData. Отправляем данные на сервер.
  }
}
