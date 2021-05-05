import 'package:json_annotation/json_annotation.dart';
import 'package:work_effort_manager/objects/status.dart';

import 'converters/interaction_converter.dart';
import 'interaction.dart';

part 'effort.g.dart';

@InteractionConverter()
@JsonSerializable()
class Effort {
  String jobTitle;
  String company;
  Status status;
  List<Interaction> interactions;

  Effort(
      {required this.jobTitle,
      required this.company,
      required this.status,
      required this.interactions});

  factory Effort.fromJson(Map<String, dynamic> json) => _$EffortFromJson(json);

  Map<String, dynamic> toJson() => _$EffortToJson(this);
}
