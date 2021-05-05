import 'package:json_annotation/json_annotation.dart';
import 'package:work_effort_manager/objects/interaction.dart';

part 'application.g.dart';

@JsonSerializable()
class Application extends Interaction {
  String jobTitle;
  String company;
  String medium;
  String? adLink;

  Application(
      {required this.medium,
      required this.company,
      required this.jobTitle,
      required DateTime date,
      this.adLink})
      : super(date, 'Application');

  factory Application.fromJson(Map<String, dynamic> json) =>
      _$ApplicationFromJson(json);

  Map<String, dynamic> toJson() => _$ApplicationToJson(this);
}
