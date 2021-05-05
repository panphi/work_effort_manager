import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:work_effort_manager/objects/converters/color_converter.dart';

part 'status.g.dart';

@ColorConverter()
@JsonSerializable()
class Status {
  String name;
  Color color;

  Status(this.name, this.color);

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);

  Map<String, dynamic> toJson() => _$StatusToJson(this);
}
