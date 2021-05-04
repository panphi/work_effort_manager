import 'package:json_annotation/json_annotation.dart';

import 'interaction.dart';

part 'inquiry.g.dart';

@JsonSerializable()
class Inquiry extends Interaction {
  String toWhom;
  String what;

  Inquiry({required this.toWhom, required this.what, required DateTime date})
      : super(date, 'Inquiry');

  factory Inquiry.fromJson(Map<String, dynamic> json) =>
      _$InquiryFromJson(json);

  Map<String, dynamic> toJson() => _$InquiryToJson(this);
}
