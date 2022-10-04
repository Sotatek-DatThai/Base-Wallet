import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_user_schema.g.dart';

@JsonSerializable()
class GetUserSchema {
  final String id;

  GetUserSchema(this.id);

  factory GetUserSchema.fromJson(Map<String, dynamic> json) =>
      _$GetUserSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$GetUserSchemaToJson(this);
}
