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
    interactions: (json['interactions'] as List<dynamic>)
        .map((e) =>
            const InteractionConverter().fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$EffortToJson(Effort instance) => <String, dynamic>{
      'jobTitle': instance.jobTitle,
      'company': instance.company,
      'status': instance.status.toJson(),
      'interactions': instance.interactions
          .map(const InteractionConverter().toJson)
          .toList(),
    };
