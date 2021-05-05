// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inquiry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Inquiry _$InquiryFromJson(Map<String, dynamic> json) {
  return Inquiry(
    toWhom: json['toWhom'] as String,
    what: json['what'] as String,
    date: DateTime.parse(json['date'] as String),
    answer: json['answer'] as String?,
  )..interactionName = json['interactionName'] as String;
}

Map<String, dynamic> _$InquiryToJson(Inquiry instance) {
  final val = <String, dynamic>{
    'date': instance.date.toIso8601String(),
    'interactionName': instance.interactionName,
    'toWhom': instance.toWhom,
    'what': instance.what,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('answer', instance.answer);
  return val;
}
