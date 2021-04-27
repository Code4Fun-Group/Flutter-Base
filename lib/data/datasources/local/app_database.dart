import 'dart:async';

import 'package:expense_tracker/core/constants/db_constant.dart';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

import 'DAOs/example_dao.dart';
import '../../../domain/entities/example_entity.dart';

part 'app_database.g.dart';

@Database(version: DB_VERSION, entities: [ExampleEntity])
abstract class AppDataBase extends FloorDatabase {
  ExampleDao get exampleDao;
}
