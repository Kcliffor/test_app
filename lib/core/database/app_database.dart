import 'dart:io';

import 'package:drift_inspector/drift_inspector.dart';
import 'package:moor/ffi.dart';
import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import 'data_models/user_db_model.dart';
import 'models/users.dart';

part 'app_database.g.dart';

LazyDatabase openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return VmDatabase(file);
  });
}

@UseMoor(tables: [Users])
class AppDatabase extends _$AppDatabase {
  AppDatabase(QueryExecutor e) : super(e) {
    _initInspector();
  }

  @override
  int get schemaVersion => 1;

  _initInspector() async {
    final moorInspectorBuilder = DriftInspectorBuilder()
      ..bundleId = 'com.example.com'
      ..icon = 'flutter'
      ..addDatabase('Eclipse', this);
    final inspector = moorInspectorBuilder.build();

    await inspector.start();
  }

  Future insertUsers(UsersCompanion usersCompanion) async =>
      await into(users).insert(usersCompanion);

  Future checkDBUsers() async => await select(users).get();

  Future<List<UserDBModel>> getUsers() async {
    var listUsers = await select(users).get();
    return listUsers.map((user) => UserDBModel.fromModel(user)).toList();
  }

  Future<UserDBModel?> getUserById(int id) async {
    var user = await (select(users)..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();
    return user != null ? UserDBModel.fromModel(user) : null;
  }
}
