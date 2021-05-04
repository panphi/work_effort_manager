import 'package:json_annotation/json_annotation.dart';

import 'interaction.dart';

part 'feedback.g.dart';

@JsonSerializable()
class Feedback extends Interaction {
  String from;
  String feedback;

  // The from is the DateTime from Interaction
  Feedback({required this.from, required this.feedback, required DateTime date})
      : super(date, 'Feedback');

  factory Feedback.fromJson(Map<String, dynamic> json) =>
      _$FeedbackFromJson(json);

  Map<String, dynamic> toJson() => _$FeedbackToJson(this);
}
