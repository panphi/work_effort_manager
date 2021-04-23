// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Interaction _$InteractionFromJson(Map<String, dynamic> json) {
  return Interaction(
    DateTime.parse(json['date'] as String),
  );
}

Map<String, dynamic> _$InteractionToJson(Interaction instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
    };
