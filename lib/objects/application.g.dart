// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Application _$ApplicationFromJson(Map<String, dynamic> json) {
  return Application(
    medium: json['medium'] as String,
    company: json['company'] as String,
    jobTitle: json['jobTitle'] as String,
    date: DateTime.parse(json['date'] as String),
    adLink: json['adLink'] as String?,
  )..interactionName = json['interactionName'] as String;
}

Map<String, dynamic> _$ApplicationToJson(Application instance) {
  final val = <String, dynamic>{
    'date': instance.date.toIso8601String(),
    'interactionName': instance.interactionName,
    'jobTitle': instance.jobTitle,
    'company': instance.company,
    'medium': instance.medium,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('adLink', instance.adLink);
  return val;
}
