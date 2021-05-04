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
  )..interactionName = json['interactionName'] as String;
}

Map<String, dynamic> _$InterviewToJson(Interview instance) => <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'interactionName': instance.interactionName,
      'to': instance.to.toIso8601String(),
      'where': instance.where,
    };
