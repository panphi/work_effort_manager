// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Feedback _$FeedbackFromJson(Map<String, dynamic> json) {
  return Feedback(
    from: json['from'] as String,
    feedback: json['feedback'] as String,
    date: DateTime.parse(json['date'] as String),
  )..interactionName = json['interactionName'] as String;
}

Map<String, dynamic> _$FeedbackToJson(Feedback instance) => <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'interactionName': instance.interactionName,
      'from': instance.from,
      'feedback': instance.feedback,
    };
