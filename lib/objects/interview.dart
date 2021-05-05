import 'package:json_annotation/json_annotation.dart';
import 'package:work_effort_manager/objects/feedback.dart';

import 'interaction.dart';

part 'interview.g.dart';

@JsonSerializable()
class Interview extends Interaction {
  DateTime to;
  String where;
  String? notes;
  Feedback? feedback;

  // The from is the DateTime date from Interaction
  Interview({
    required this.to,
    required this.where,
    required DateTime date,
    this.notes,
    this.feedback,
  }) : super(date, 'Interview');

  factory Interview.fromJson(Map<String, dynamic> json) =>
      _$InterviewFromJson(json);

  Map<String, dynamic> toJson() => _$InterviewToJson(this);
}
