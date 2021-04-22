import 'dart:async';

import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

import '../../../features/example/data/datasources/local/example_dao.dart';
import '../../../features/example/domain/entities/example_entity.dart';
import '../../constants/db_constant.dart';

part 'app_database.g.dart';

@Database(version: DB_VERSION, entities: [ExampleEntity])
abstract class AppDataBase extends FloorDatabase {
  ExampleDao get exampleDao;
}
