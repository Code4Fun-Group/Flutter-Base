import 'package:floor/floor.dart';

import '../../../../../core/constants/db_constant.dart';
import '../../../domain/entities/example_entity.dart';

@dao
abstract class ExampleDao {
  @Query('SELECT * FROM $DB_TABLE_NAME')
  Future<List<ExampleEntity>> getAllUser();

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertUser(ExampleEntity entity);
}
