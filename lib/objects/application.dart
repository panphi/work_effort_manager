import 'package:json_annotation/json_annotation.dart';
import 'package:work_effort_manager/objects/application_type.dart';
import 'package:work_effort_manager/objects/interaction.dart';

part 'application.g.dart';

@JsonSerializable()
class Application extends Interaction {
  String medium;
  String? adLink;
  ApplicationType type;

  Application(
      {required this.medium,
      required this.type,
      required DateTime date,
      this.adLink})
      : super(date);

  factory Application.fromJson(Map<String, dynamic> json) =>
      _$ApplicationFromJson(json);

  Map<String, dynamic> toJson() => _$ApplicationToJson(this);
}
