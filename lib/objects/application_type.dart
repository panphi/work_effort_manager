import 'package:json_annotation/json_annotation.dart';

part 'application_type.g.dart';

@JsonSerializable()
class ApplicationType {
  String name;

  ApplicationType(this.name);

  factory ApplicationType.fromJson(Map<String, dynamic> json) =>
      _$ApplicationTypeFromJson(json);

  Map<String, dynamic> toJson() => _$ApplicationTypeToJson(this);
}