import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:test_app/features/first/data/models/data_model.dart';
import 'package:test_app/features/first/data/models/result_model.dart';
import 'package:test_app/features/first/domain/entities/user_data.dart';

abstract class FirstRemoteDataSource {
  Future<List<UserDataModel>> getData();
  sendData(List<UserData> items);
}

class FirstRemoteDataSourceImpl implements FirstRemoteDataSource {
  @override
  sendData(List<UserData> items) {
    // TODO: implement sendData.
  }

  @override
  Future<List<UserDataModel>> getData() async {
    try {
      var url = Uri.parse('https://jsonplaceholder.typicode.com/users');
      final response = await http.get(url);
      if (response.statusCode >= 200 && response.statusCode <= 210) {
        var result = ResultModel.fromJson(jsonDecode(response.body));
        var users =
            result.data.map((json) => UserDataModel.fromJson(json)).toList();
        return users;
      } else {
        throw UnimplementedError();
      }
    } on Exception {
      throw UnimplementedError();
    }
  }
}
