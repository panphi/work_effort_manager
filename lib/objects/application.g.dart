// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Application _$ApplicationFromJson(Map<String, dynamic> json) {
  return Application(
    medium: json['medium'] as String,
    type: ApplicationType.fromJson(json['type'] as Map<String, dynamic>),
    date: DateTime.parse(json['date'] as String),
    adLink: json['adLink'] as String?,
  );
}

Map<String, dynamic> _$ApplicationToJson(Application instance) {
  final val = <String, dynamic>{
    'date': instance.date.toIso8601String(),
    'medium': instance.medium,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('adLink', instance.adLink);
  val['type'] = instance.type.toJson();
  return val;
}
