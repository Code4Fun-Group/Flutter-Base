import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/example_entity.dart';

part 'example_model.g.dart';

@JsonSerializable()
class ExampleModel extends ExampleEntity {
  const ExampleModel({
    required String name,
    required String avatarUrl,
    required String repoUrl,
  }) : super(
          name: name,
          avatarUrl: avatarUrl,
          repoUrl: repoUrl,
        );

  factory ExampleModel.fromJson(Map<String, dynamic> json) =>
      _$ExampleModelFromJson(json);

  Map<String, dynamic> toJson() => _$ExampleModelToJson(this);
}
