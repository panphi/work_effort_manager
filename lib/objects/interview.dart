import 'package:json_annotation/json_annotation.dart';

import 'interaction.dart';

part 'interview.g.dart';

@JsonSerializable()
class Interview extends Interaction {
  DateTime to;
  String where;

  // The from is the DateTime date from Interaction
  Interview({required this.to, required this.where, required DateTime date})
      : super(date, 'Interview');

  factory Interview.fromJson(Map<String, dynamic> json) =>
      _$InterviewFromJson(json);

  Map<String, dynamic> toJson() => _$InterviewToJson(this);
}
