import 'package:equatable/equatable.dart';
import 'package:floor/floor.dart';
import 'package:json_annotation/json_annotation.dart';

@entity
class ExampleEntity extends Equatable {
  const ExampleEntity(
      {required this.name, required this.avatarUrl, required this.repoUrl});
      
  @primaryKey
  final String name;
  @JsonKey(name: 'avatar_url')
  final String avatarUrl;
  @JsonKey(name: 'repos_url')
  final String repoUrl;

  @override
  List<Object> get props => [name, avatarUrl, repoUrl];

  @override
  bool get stringify => true;
}
