// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Interview _$InterviewFromJson(Map<String, dynamic> json) {
  return Interview(
    to: DateTime.parse(json['to'] as String),
    where: json['where'] as String,
    date: DateTime.parse(json['date'] as String),
    notes: json['notes'] as String?,
    feedback: json['feedback'] == null
        ? null
        : Feedback.fromJson(json['feedback'] as Map<String, dynamic>),
  )..interactionName = json['interactionName'] as String;
}

Map<String, dynamic> _$InterviewToJson(Interview instance) {
  final val = <String, dynamic>{
    'date': instance.date.toIso8601String(),
    'interactionName': instance.interactionName,
    'to': instance.to.toIso8601String(),
    'where': instance.where,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('notes', instance.notes);
  writeNotNull('feedback', instance.feedback?.toJson());
  return val;
}
