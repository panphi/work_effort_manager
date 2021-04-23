// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'effort.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Effort _$EffortFromJson(Map<String, dynamic> json) {
  return Effort(
    jobTitle: json['jobTitle'] as String,
    company: json['company'] as String,
    status: Status.fromJson(json['status'] as Map<String, dynamic>),
    interactions: (json['interactions'] as List<dynamic>?)
        ?.map((e) => Interaction.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$EffortToJson(Effort instance) {
  final val = <String, dynamic>{
    'jobTitle': instance.jobTitle,
    'company': instance.company,
    'status': instance.status.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'interactions', instance.interactions?.map((e) => e.toJson()).toList());
  return val;
}
